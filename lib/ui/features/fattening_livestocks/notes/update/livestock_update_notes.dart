import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/data/model/catatan/request/catatan_request.dart';
import 'package:digiternak_app/data/model/catatan/response/data/catatan_data.dart';
import 'package:digiternak_app/provider/notes/notes_provider.dart';
import 'package:digiternak_app/ui/auth/login/login_screen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LivestockUpdateNotes extends StatefulWidget {
  static const routeName = '/livestock_update_notes';
  final CatatanData data;
  const LivestockUpdateNotes({super.key, required this.data});

  @override
  State<LivestockUpdateNotes> createState() => _LivestockUpdateNotesState();
}

class _LivestockUpdateNotesState extends State<LivestockUpdateNotes> {
  final formKey = GlobalKey<FormState>();
  final feedController = TextEditingController();
  final costsController = TextEditingController();
  final detailController = TextEditingController();
  late NotesProvider provider;

  @override
  void dispose() {
    super.dispose();
    feedController.dispose();
    costsController.dispose();
    detailController.dispose();
  }

  @override
  void initState() {
    super.initState();

    provider = context.read<NotesProvider>();

    if (provider.updateState == ResultState.unauthorized) {
      Navigator.pushReplacementNamed(context, LoginScreen.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
        title: "Ubah Catatan",
        body: ChangeNotifierProvider.value(
          value: provider,
          child: Consumer<NotesProvider>(
            builder: (context, provider, child) {
              switch (provider.updateState) {
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
                case ResultState.error:
                  return const Center(
                    child: Text("terjadi Kesalahan"),
                  );
                default:
                  return SingleChildScrollView(
                      child: Form(
                    key: formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        _TextInfoField(
                            title: "Ternak",
                            value: widget.data.livestockVID ?? ""),
                        _TextInfoField(
                            title: "Nama Kandang",
                            value: widget.data.livestockCage ?? ""),
                        _TextFormField(
                          form: TextFormField(
                            controller: feedController,
                            decoration: const InputDecoration(
                              hintText: "Makanan",
                            ),
                          ),
                        ),
                        _TextFormField(
                          form: TextFormField(
                            controller: costsController,
                            decoration:
                                const InputDecoration(hintText: "Biaya"),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        _TextFormField(
                          form: TextFormField(
                            controller: detailController,
                            decoration:
                                const InputDecoration(hintText: "Detail"),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        PrimaryButton(
                            onPressed: () async {
                              if (formKey.currentState!.validate()) {
                                final request = CatatanRequest(
                                    feed: feedController.text,
                                    costs: int.parse(costsController.text),
                                    details: detailController.text);

                                await provider.editNoteById(
                                    request, widget.data.id ?? 0);

                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text(provider.message)));
                                if (provider.updateState ==
                                    ResultState.hasData) {
                                  Navigator.pop(context);
                                }
                              }
                            },
                            title: "Ubah Catatan"),
                      ],
                    ),
                  ));
              }
            },
          ),
        ));
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
            child: Flexible(
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
