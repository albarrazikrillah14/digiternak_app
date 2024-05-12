import 'package:digiternak_app/ui/features/fattening_livestocks/notes/add/add_note_screen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:digiternak_app/widget/qr_widget.dart';
import 'package:flutter/material.dart';

class HomeNotesScreen extends StatefulWidget {
  static const routeName = '/notes_home_livestock';

  const HomeNotesScreen({super.key});

  @override
  State<HomeNotesScreen> createState() => _NotesHomeLiveStockState();
}

class _NotesHomeLiveStockState extends State<HomeNotesScreen> {
  final queryController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    queryController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: "Tambah Catatan",
      isHasBackButton: true,
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: queryController,
                  decoration: InputDecoration(
                    hintText: "Masukkan Kode Ternak",
                    suffixIcon: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, QRCodeWidget.routeName,
                            arguments: QRtype.notes);
                      },
                      icon: const Icon(
                        Icons.qr_code,
                        size: 24,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "query tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                PrimaryButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.pushNamed(context, AddNoteScreen.routeName,
                            arguments: queryController.text);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content:
                                Text("Silahkan isi kode sapi terlebih dahulu"),
                          ),
                        );
                      }
                    },
                    title: "TAMBAH CATATAN"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
