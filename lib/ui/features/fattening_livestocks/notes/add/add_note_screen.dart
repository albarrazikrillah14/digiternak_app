import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/data/model/notes/request/note_request.dart';
import 'package:digiternak_app/provider/notes/notes_provider.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/livestock/add_livestock_screen.dart';
import 'package:digiternak_app/ui/upload/upload_screen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/container_widget.dart';
import 'package:digiternak_app/widget/custom_dropdown.dart';
import 'package:digiternak_app/widget/custom_row.dart';
import 'package:digiternak_app/widget/error_widget.dart';
import 'package:digiternak_app/widget/loading_screen.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:digiternak_app/widget/primary_textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddNoteScreen extends StatefulWidget {
  static const routeName = "/livestock_add_notes_screen";
  const AddNoteScreen({super.key});

  @override
  State<AddNoteScreen> createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
  int livestockId = 0;
  late NotesProvider provider;
  final livestockFeedController = TextEditingController();
  final costsController = TextEditingController();
  final detailController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    livestockFeedController.dispose();
    costsController.dispose();
    detailController.dispose();
  }

  @override
  void initState() {
    super.initState();

    provider = context.read<NotesProvider>();

    provider.getLivestocks();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: "Tambah Catatan",
      isHasBackButton: true,
      body: ChangeNotifierProvider.value(
        value: provider,
        child: Consumer<NotesProvider>(
          builder: (context, provider, child) {
            switch (provider.livestockState) {
              case ResultState.unauthorized:
                return errorWidget(
                    context: context, type: ErrorType.unauthorization);
              case ResultState.loading:
                return loadingScreen();
              case ResultState.noData:
                return Center(
                  child: PrimaryButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, AddLivestockScreen.routeName);
                    },
                    title: "Tambah Ternak",
                  ),
                );
              case ResultState.error:
                return errorWidget(
                    context: context,
                    message: provider.message,
                    onPress: () {
                      Navigator.pop(context);
                    });
              case ResultState.hasData:
                List<int> listLivestockIds =
                    provider.livestocks.data!.map((e) => e.id).toList();
                if (listLivestockIds.isEmpty) {
                  return const Center(
                    child: Text("Tidak ada ternak yang tersedia"),
                  );
                }
                if (!listLivestockIds.contains(livestockId)) {
                  livestockId = listLivestockIds.first;
                }
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CustomDropdownFormField(
                            value: livestockId.toString(),
                            onChanged: (value) {
                              setState(() {
                                livestockId = int.parse(value ?? "0");
                              });
                            },
                            labelText: 'Pilih ternak',
                            items: listLivestockIds
                                .map((e) => e.toString())
                                .toList()
                                .map((it) {
                              return DropdownMenuItem(
                                value: it.toString(),
                                child: Text(provider.livestocks.data!
                                    .firstWhere((element) =>
                                        element.id == int.parse(it))
                                    .name),
                              );
                            }).toList()),
                        const SizedBox(
                          height: 16,
                        ),
                        livestockId != 0
                            ? buildContainer(
                                context: context,
                                child: Column(
                                  children: [
                                    CustomRow(
                                        title: 'Kode ternak',
                                        value: provider.livestocks.data!
                                                .firstWhere((element) =>
                                                    element.id == livestockId)
                                                .vid ??
                                            ""),
                                    CustomRow(
                                        title: 'Nama kandang',
                                        value: provider.livestocks.data!
                                            .firstWhere((element) =>
                                                element.id == livestockId)
                                            .cage
                                            .name),
                                  ],
                                ),
                                title: "")
                            : Container(),
                        PrimaryTextField(
                          placeHolder: 'Makanan ternak',
                          controller: livestockFeedController,
                        ),
                        PrimaryTextField(
                          placeHolder: 'Biaya (dalam Rp)',
                          controller: costsController,
                          keyboardType: TextInputType.number,
                        ),
                        PrimaryTextField(
                          placeHolder: 'Detail catatan',
                          controller: detailController,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          height: 16,
                        ),
                        PrimaryButton(
                            onPressed: () async {
                              final request = NoteRequest(
                                  feed: livestockFeedController.text,
                                  costs: int.parse(costsController.text),
                                  details: detailController.text);

                              await provider.createNote(request, livestockId);

                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text(provider.message)));

                              if (provider.createState == ResultState.hasData) {
                                Navigator.pushReplacementNamed(
                                  context,
                                  UploadScreen.routeName,
                                  arguments: {
                                    'type': UploadType.NOTES,
                                    'id': "${provider.note?.data?.id ?? 0}",
                                  },
                                );
                              }
                            },
                            title: "Unggah Catatan"),
                      ],
                    )
                  ],
                );
            }
          },
        ),
      ),
    );
  }
}
