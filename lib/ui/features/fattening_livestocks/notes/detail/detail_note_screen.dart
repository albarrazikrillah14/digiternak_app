import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/common/utils/mapper/mapper.dart';
import 'package:digiternak_app/data/model/notes/response/data/note_data.dart';
import 'package:digiternak_app/provider/notes/notes_provider.dart';
import 'package:digiternak_app/ui/detail_image/detail_image_screen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/notes/update/update_note_screen.dart';
import 'package:digiternak_app/ui/home/home_screen.dart';
import 'package:digiternak_app/ui/upload/upload_screen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/custom_row.dart';
import 'package:digiternak_app/widget/error_widget.dart';
import 'package:digiternak_app/widget/loading_screen.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';

class DetailNoteScreen extends StatefulWidget {
  static const routeName = "/livestock_detail_notes";
  final int id;
  const DetailNoteScreen({super.key, required this.id});

  @override
  State<DetailNoteScreen> createState() => _DetailNoteScreenState();
}

class _DetailNoteScreenState extends State<DetailNoteScreen> {
  late NotesProvider provider;
  final String BASE_IMAGE_URL = dotenv.env["BASE_IMAGE_URL"]!;

  @override
  void initState() {
    super.initState();

    provider = context.read<NotesProvider>();
    provider.getNoteById(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: "Detail Catatan",
      isHasBackButton: true,
      body: ChangeNotifierProvider.value(
        value: provider,
        child: Consumer<NotesProvider>(
          builder: (context, provider, child) {
            switch (provider.stateNote) {
              case ResultState.unauthorized:
                return errorWidget(
                    context: context, type: ErrorType.unauthorization);
              case ResultState.loading:
                return loadingScreen();
              case ResultState.noData:
                return errorWidget(
                    context: context,
                    message: "Data Tidak ditemukan",
                    onPress: () {
                      Navigator.pop(context);
                    });
              case ResultState.hasData:
                final NoteData? data = provider.note!.data;
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        CustomRow(
                            title: formatTanggal(data?.dateRecorded ?? ""),
                            value: data?.location ?? ""),
                        CustomRow(
                            title: 'Kode ternak',
                            value: data?.livestockVID ?? ""),
                        CustomRow(
                            title: 'Nama ternak',
                            value: data?.livestockName ?? ""),
                        CustomRow(
                            title: 'Nama kandang',
                            value: data?.livestockCage ?? ""),
                        const SizedBox(
                          height: 8,
                        ),
                        const Divider(),
                        CustomRow(
                            title: 'Makanan', value: data?.livestockFeed ?? ""),
                        CustomRow(
                            title: 'Biaya',
                            value:
                                formatCurrency((data?.costs ?? 0).toDouble())),
                        CustomRow(title: 'Detail', value: data?.details ?? ""),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Dokumentasi",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(fontSize: 16),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushReplacementNamed(
                                  context,
                                  UploadScreen.routeName,
                                  arguments: {
                                    'type': UploadType.NOTES,
                                    'id': "${widget.id}",
                                  },
                                );
                              },
                              child: const Icon(
                                Icons.add,
                                color: Colors.blue,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        (data?.images?.isEmpty ?? true)
                            ? Container()
                            : Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, DetailImageScreen.routeName,
                                          arguments: data?.images!);
                                    },
                                    child: SizedBox(
                                      height: 120,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, index) {
                                          return Padding(
                                            padding: const EdgeInsets.all(4),
                                            child: Image.network(
                                              "$BASE_IMAGE_URL${data?.images![index]}",
                                              height: 120,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  2,
                                              fit: BoxFit.cover,
                                            ),
                                          );
                                        },
                                        itemCount: data?.images?.length ?? 0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                      ],
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          height: 16,
                        ),
                        PrimaryButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                UpdateNoteScreen.routeName,
                                arguments: provider.note!.data,
                              );
                            },
                            title: "Ubah Catatan"),
                        const SizedBox(
                          height: 16,
                        ),
                        PrimaryButton(
                          onPressed: () async {
                            await provider.deleteNoteById(data?.id ?? 0);

                            Navigator.popAndPushNamed(
                                context, HomeScreen.routeName);
                          },
                          title: "Hapus Catatan",
                          type: ButtonType.Delete,
                        ),
                      ],
                    ),
                  ],
                );

              case ResultState.error:
                return errorWidget(
                    context: context,
                    message: provider.message,
                    onPress: () {
                      Navigator.pop(context);
                    });
            }
          },
        ),
      ),
    );
  }
}
