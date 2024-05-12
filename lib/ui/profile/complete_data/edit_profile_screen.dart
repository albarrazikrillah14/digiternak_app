import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/common/utils/mapper/mapper.dart';
import 'package:digiternak_app/data/model/profile/request/profile_request.dart';
import 'package:digiternak_app/provider/profile/profile_provider.dart';
import 'package:digiternak_app/ui/auth/login/login_screen.dart';
import 'package:digiternak_app/ui/profile/profile_screen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/dialog_widget.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EditProfileScreen extends StatefulWidget {
  static const routeName = "/edit_profile_screen";
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final idNumberController = TextEditingController();
  final fullNameController = TextEditingController();
  final birthDateController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final addressController = TextEditingController();
  String gender = "Pria";

  DateTime birthDate = DateTime.now();

  late ProfileProvider provider;

  @override
  void initState() {
    super.initState();
    provider = context.read<ProfileProvider>();
    if (provider.state == ResultState.unauthorized) {
      Navigator.pushReplacementNamed(context, LoginScreen.routeName);
    }
  }

  @override
  void dispose() {
    super.dispose();
    idNumberController.dispose();
    fullNameController.dispose();
    birthDateController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: provider,
      child: Consumer<ProfileProvider>(
        builder: (context, provider, child) {
          if (provider.state == ResultState.unauthorized) {
            return Center(
              child: PrimaryButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, LoginScreen.routeName);
                },
                title: "Masuk Kembali",
              ),
            );
          }
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
                          if (value?.length != 16) {
                            return 'Masukkan NIK dengan 16 karakter';
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
                          final regex = RegExp(r'^[a-zA-Z\s]+$');
                          if (value == null || value.isEmpty) {
                            return 'Masukkan nama lengkap dengan benar';
                          }
                          if (!regex.hasMatch(value)) {
                            return 'Nama lengkap hanya boleh mengandung huruf dan spasi';
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
                      TextFormField(
                        controller: addressController,
                        decoration: const InputDecoration(
                          labelText: 'Alamat',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Masukkan Alamat dengan benar';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        controller: phoneNumberController,
                        decoration: const InputDecoration(
                          labelText: 'Nomor Handphone',
                        ),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          final regex = RegExp(r'^08\d{1,15}$');
                          if (value == null || value.isEmpty) {
                            return 'Masukkan nomor telepon dengan benar';
                          }
                          if (!regex.hasMatch(value)) {
                            return 'Nomor telepon harus dimulai dengan 08 dan terdiri dari 9-16 digit angka';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      PrimaryButton(
                          onPressed: () async {
                            if (formKey.currentState!.validate()) {
                              final scaffoldMessanger =
                                  ScaffoldMessenger.of(context);

                              final request = ProfileRequest(
                                  nik: idNumberController.text,
                                  fullName: fullNameController.text,
                                  birthdate: formatDateString(
                                      birthDateController.text),
                                  phoneNumber: phoneNumberController.text,
                                  gender: gender == "Pria" ? 1 : 0,
                                  address: addressController.text);

                              showAlertDialog(
                                  context: context,
                                  title: "Data Pengguna",
                                  messsage: "Apakah anda sudah yakin?",
                                  onSuccess: () async {
                                    final result =
                                        await provider.editProfile(request);

                                    scaffoldMessanger.showSnackBar(SnackBar(
                                        content: Text(result.message ?? "")));
                                    if (result.error == false) {
                                      Navigator.pushNamedAndRemoveUntil(
                                          context,
                                          ProfileScreen.routeName,
                                          (route) => false);
                                    }
                                  });
                            }
                          },
                          title: "SUBMIT"),
                      const SizedBox(
                        height: 32,
                      ),
                    ],
                  ),
                )),
          );
        },
      ),
    );
  }
}
