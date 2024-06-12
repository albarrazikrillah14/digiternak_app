import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/common/utils/mapper/mapper.dart';
import 'package:digiternak_app/data/model/profile/request/profile_request.dart';
import 'package:digiternak_app/provider/profile/profile_provider.dart';
import 'package:digiternak_app/ui/auth/login/login_screen.dart';
import 'package:digiternak_app/ui/profile/profile_screen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/custom_dropdown.dart';
import 'package:digiternak_app/widget/date_picket_widget.dart';
import 'package:digiternak_app/widget/dialog_widget.dart';
import 'package:digiternak_app/widget/error_widget.dart';
import 'package:digiternak_app/widget/loading_screen.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:digiternak_app/widget/primary_textfield.dart';
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
  String gender = "Laki-laki";

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
    phoneNumberController.dispose();
    addressController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: provider,
      child: Consumer<ProfileProvider>(
        builder: (context, provider, child) {
          switch (provider.state) {
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
              return loadingScreen();

            case ResultState.error:
              return errorWidget(
                context: context,
                message: provider.message,
                onPress: () {
                  provider.setState();
                },
              );
            default:
              return BaseScreen(
                title: "Lengkapi Data",
                body: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          PrimaryTextField(
                            placeHolder: 'Nomor nik',
                            controller: idNumberController,
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value?.length != 16) {
                                return 'Masukkan NIK dengan 16 karakter';
                              }
                              return null;
                            },
                          ),
                          PrimaryTextField(
                            placeHolder: 'Nama lengkap',
                            controller: fullNameController,
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
                            keyboardType: TextInputType.name,
                          ),
                          PrimaryTextField(
                            placeHolder: 'Tanggal lahir',
                            controller: birthDateController,
                            icon: const Icon(Icons.calendar_month),
                            iconTapped: () async {
                              String? selectedDate = await selectDate(context);
                              if (selectedDate != null) {
                                setState(() {
                                  birthDateController.text = selectedDate;
                                });
                              }
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
                          CustomDropdownFormField(
                            labelText: 'Jenis Kelamin',
                            hintText: 'Pilih Jenis Kelamin',
                            value: gender,
                            onChanged: (String? newValue) {
                              setState(() {
                                gender = newValue!;
                              });
                            },
                            items: const [
                              DropdownMenuItem<String>(
                                value: "Laki-laki",
                                child: Text("Laki-laki"),
                              ),
                              DropdownMenuItem<String>(
                                value: "Perempuan",
                                child: Text("Perempuan"),
                              ),
                            ],
                          ),
                          PrimaryTextField(
                            placeHolder: 'Alamat',
                            controller: addressController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Masukkan Alamat dengan benar';
                              }
                              return null;
                            },
                          ),
                          PrimaryTextField(
                            placeHolder: 'Nomor handphone',
                            controller: phoneNumberController,
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
                        ],
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
                                  gender: gender,
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
                    ],
                  ),
                ),
              );
          }
        },
      ),
    );
  }
}
