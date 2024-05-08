import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/data/model/catatan/request/catatan_request.dart';
import 'package:digiternak_app/provider/notes/notes_provider.dart';
import 'package:digiternak_app/ui/auth/login/login_screen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/livestock/add_livestock_screen.dart';
import 'package:digiternak_app/ui/upload/upload_screen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LivestockAddNotesScreen extends StatefulWidget {
  static const routeName = "/livestock_add_notes_screen";
  const LivestockAddNotesScreen({super.key});

  @override
  State<LivestockAddNotesScreen> createState() =>
      _LivestockAddNotesScreenState();
}

class _LivestockAddNotesScreenState extends State<LivestockAddNotesScreen> {
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

    if (provider.livestockState == ResultState.unauthorized) {
      Navigator.pushReplacementNamed(context, LoginScreen.routeName);
    }
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
                return Center(
                  child: PrimaryButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, LoginScreen.routeName);
                    },
                    title: "Masuk Kembali",
                  ),
                );
              case ResultState.loading:
                return const Center(
                  child: CircularProgressIndicator(
                    color: Colors.blue,
                  ),
                );
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
                return Center(
                  child: Text(provider.message),
                );
              case ResultState.hasData:
                List<int> listLivestockIds =
                    provider.livestocks.data!.map((e) => e.id).toList();
                if (listLivestockIds.isEmpty) {
                  return const Center(
                    child: Text("Tidak ada ternak yang tersedia"),
                  );
                }
                // Ensure livestockId is a valid value
                if (!listLivestockIds.contains(livestockId)) {
                  livestockId =
                      listLivestockIds.first; // Set to first item as default
                }
                return SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _DropDownButton(
                        title: "Pilih Ternak",
                        dropdown: DropdownButton(
                          items: listLivestockIds.map((livestockId) {
                            return DropdownMenuItem(
                              value: livestockId,
                              child: Text(provider.livestocks.data!
                                  .firstWhere(
                                      (element) => element.id == livestockId)
                                  .name),
                            );
                          }).toList(),
                          value: livestockId,
                          onChanged: (value) {
                            setState(() {
                              livestockId = value as int;
                            });
                          },
                        ),
                      ),
                      livestockId != 0
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                _TextInfoField(
                                    title: "Kode Ternak",
                                    value: provider.livestocks.data!
                                            .firstWhere((element) =>
                                                element.id == livestockId)
                                            .vid ??
                                        ""),
                                _TextInfoField(
                                    title: "Nama Kandang",
                                    value: provider.livestocks.data!
                                        .firstWhere((element) =>
                                            element.id == livestockId)
                                        .cage
                                        .name),
                              ],
                            )
                          : Container(),
                      _TextFormField(
                        form: TextFormField(
                          controller: livestockFeedController,
                          decoration:
                              const InputDecoration(hintText: 'Makanan Ternak'),
                        ),
                      ),
                      _TextFormField(
                        form: TextFormField(
                          controller: costsController,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: "Biaya",
                          ),
                        ),
                      ),
                      _TextFormField(
                        form: TextFormField(
                          controller: detailController,
                          decoration: const InputDecoration(
                              hintText: 'Detail Cacatatan'),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      provider.state == ResultState.loading
                          ? const Center(
                              child: CircularProgressIndicator(
                                color: Colors.blue,
                              ),
                            )
                          : PrimaryButton(
                              onPressed: () async {
                                final request = CatatanRequest(
                                    feed: livestockFeedController.text,
                                    costs: int.parse(costsController.text),
                                    details: detailController.text);

                                await provider.createNote(request, livestockId);

                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text(provider.message)));

                                provider.setState();
                                if (provider.createState ==
                                    ResultState.hasData) {
                                  Navigator.pushNamed(
                                    context,
                                    UploadScreen.routeName,
                                    arguments: {
                                      'type': UploadType.NOTES,
                                      'id': "${provider.note?.id ?? 0}",
                                    },
                                  );
                                }
                              },
                              title: "Unggah Catatan"),
                    ],
                  ),
                );
            }
          },
        ),
      ),
    );
  }

  Widget _DropDownButton(
      {required String title, required DropdownButton dropdown}) {
    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey, width: 1)),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(color: Colors.grey),
                ),
                dropdown
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _TextFormField({required TextFormField form}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 16,
        ),
        form,
      ],
    );
  }

  Widget _TextInfoField({required String title, required String value}) {
    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text(title), Text(value)],
        )
      ],
    );
  }
}
