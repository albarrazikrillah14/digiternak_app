import 'package:digiternak_app/data/model/profile/user_request.dart';
import 'package:digiternak_app/ui/profile/complete_data/complete_data_step_two_screen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:flutter/material.dart';

class CompleteDataStepOneScreen extends StatefulWidget {
  static const routeName = "/complete_data_step_one_screen";
  const CompleteDataStepOneScreen({Key? key}) : super(key: key);

  @override
  State<CompleteDataStepOneScreen> createState() =>
      _CompleteDataStepOneScreenState();
}

class _CompleteDataStepOneScreenState extends State<CompleteDataStepOneScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final idNumberController = TextEditingController();
  final fullNameController = TextEditingController();
  final birthDateController = TextEditingController();
  final birthPlaceController = TextEditingController();
  String gender = "Pria";

  DateTime birthDate = DateTime.now();

  @override
  void dispose() {
    super.dispose();
    idNumberController.dispose();
    fullNameController.dispose();
    birthDateController.dispose();
    birthPlaceController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: "Lengkapi Data",
      isHasBackButton: true,
      body: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  controller: idNumberController,
                  decoration: const InputDecoration(
                    labelText: 'Nomor NIK...',
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Masukkan NIK dengan benar';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: fullNameController,
                  decoration: const InputDecoration(
                    labelText: 'Nama Lengkap..',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Masukkan nama lengkap dengan benar';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: birthDateController,
                  decoration: const InputDecoration(
                    labelText: 'Tanggal Lahir',
                  ),
                  readOnly: true,
                  onTap: () {
                    showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime.now(),
                    ).then((value) {
                      if (value != null) {
                        setState(() {
                          birthDate = value;
                          birthDateController.text =
                              '${birthDate.day}/${birthDate.month}/${birthDate.year}';
                        });
                      }
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Masukkan Tanggal Lahir dengan benar';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: birthPlaceController,
                  decoration: const InputDecoration(
                    labelText: 'Tempat Lahir',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Masukkan Tempat Lahir dengan benar';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                DropdownButtonFormField<String>(
                  value: gender,
                  onChanged: (String? newValue) {
                    setState(() {
                      gender = newValue!;
                    });
                  },
                  decoration: const InputDecoration(
                    labelText: 'Jenis Kelamin',
                    hintText: 'Pilih Jenis Kelamin',
                    border: OutlineInputBorder(),
                  ),
                  items: const [
                    DropdownMenuItem<String>(
                      value: "Pria",
                      child: Text("Pria"),
                    ),
                    DropdownMenuItem<String>(
                      value: "Wanita",
                      child: Text("Wanita"),
                    ),
                  ],
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Pilih jenis kelamin';
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
                        var request = UserRequest().copyWith(
                          noNIK: idNumberController.text,
                          name: fullNameController.text,
                          birthDate: birthDateController.text,
                          birthPlace: birthPlaceController.text,
                          gender: gender.toLowerCase() == "pria" ? true : false,
                        );
                        Navigator.pushNamed(
                            context, CompleteDataStepTwoScreen.routeName,
                            arguments: request);
                      }
                    },
                    title: "SELANJUTNYA"),
                const SizedBox(
                  height: 32,
                ),
              ],
            ),
          )),
    );
  }
}
