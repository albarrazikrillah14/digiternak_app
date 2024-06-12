import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/data/model/notes/request/note_request.dart';
import 'package:digiternak_app/data/model/notes/response/data/note_data.dart';
import 'package:digiternak_app/provider/notes/notes_provider.dart';
import 'package:digiternak_app/ui/auth/login/login_screen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/container_widget.dart';
import 'package:digiternak_app/widget/custom_row.dart';
import 'package:digiternak_app/widget/error_widget.dart';
import 'package:digiternak_app/widget/loading_screen.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:digiternak_app/widget/primary_textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UpdateNoteScreen extends StatefulWidget {
  static const routeName = '/livestock_update_notes';
  final NoteData data;
  const UpdateNoteScreen({super.key, required this.data});

  @override
  State<UpdateNoteScreen> createState() => _UpdateNoteScreenState();
}

class _UpdateNoteScreenState extends State<UpdateNoteScreen> {
  final formKey = GlobalKey<FormState>();
  final feedController = TextEditingController();
  final costsController = TextEditingController();
  final detailController = TextEditingController();
  final feedWeightController = TextEditingController();
  final vitaminController = TextEditingController();
  late NotesProvider provider;

  @override
  void dispose() {
    super.dispose();
    feedController.dispose();
    costsController.dispose();
    detailController.dispose();
    feedWeightController.dispose();
    vitaminController.dispose();
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
                  return errorWidget(
                      context: context, type: ErrorType.unauthorization);
                case ResultState.loading:
                  return loadingScreen();
                case ResultState.error:
                  return errorWidget(
                      context: context,
                      message: provider.message,
                      onPress: () {
                        provider.setUpdateState();
                      });
                default:
                  return Form(
                    key: formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            const SizedBox(
                              height: 16,
                            ),
                            buildContainer(
                                context: context,
                                child: Column(
                                  children: [
                                    CustomRow(
                                        title: "Ternak",
                                        value: widget.data.livestockVID ?? ""),
                                    CustomRow(
                                        title: "Nama Kandang",
                                        value: widget.data.livestockCage ?? ""),
                                  ],
                                ),
                                title: ""),
                            PrimaryTextField(
                              placeHolder: 'Makanan',
                              controller: feedController,
                            ),
                            PrimaryTextField(
                              placeHolder: 'Berat Makanan (dalam kg)',
                              controller: feedWeightController,
                              keyboardType: TextInputType.number,
                            ),
                            PrimaryTextField(
                              placeHolder: 'Vitamin ternak',
                              controller: vitaminController,
                            ),
                            PrimaryTextField(
                              placeHolder: 'Biaya',
                              controller: costsController,
                              keyboardType: TextInputType.number,
                            ),
                            PrimaryTextField(
                              placeHolder: 'Detail',
                              controller: detailController,
                            ),
                          ],
                        ),
                        PrimaryButton(
                            onPressed: () async {
                              if (formKey.currentState!.validate()) {
                                final request = NoteRequest(
                                    feed: feedController.text,
                                    feedWeight:
                                        int.parse(feedWeightController.text),
                                    vitamin: vitaminController.text,
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
                  );
              }
            },
          ),
        ));
  }
}
