import 'dart:ffi';

import 'package:digiternak_app/data/model/profile/user_request.dart';
import 'package:digiternak_app/ui/profile/complete_data/complete_data_step_three_screen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:flutter/material.dart';

class CompleteDataStepTwoScreen extends StatefulWidget {
  static const routeName = "/complete_data_step_two_screen";
  final UserRequest userRequest;
  const CompleteDataStepTwoScreen({Key? key, required this.userRequest})
      : super(key: key);

  @override
  State<CompleteDataStepTwoScreen> createState() =>
      _CompleteDataStepTwoScreenState();
}

class _CompleteDataStepTwoScreenState extends State<CompleteDataStepTwoScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final addressController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final bodyHeightController = TextEditingController();
  final bodyWeightController = TextEditingController();
  String? selectedBloodType;
  String? selectedMaritalStatus;

  @override
  void dispose() {
    super.dispose();
    addressController.dispose();
    phoneNumberController.dispose();
    bodyHeightController.dispose();
    bodyWeightController.dispose();
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
                  controller: addressController,
                  decoration: const InputDecoration(
                    labelText: 'Tempat Tinggal...',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Tempat tidak tidak boleh kosong';
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
                    labelText: 'Nomor HP...',
                  ),
                  keyboardType: TextInputType.number,
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
                  controller: bodyHeightController,
                  decoration: const InputDecoration(
                    labelText: 'Tinggi Badan(dalam cm)',
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Masukkan Tinggi Badan dengan benar';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: bodyWeightController,
                  decoration: const InputDecoration(
                    labelText: 'Berat Badan(kg)',
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Masukkan Berat Badan dengan benar';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                DropdownButtonFormField<String>(
                  value: selectedBloodType,
                  onChanged: (newValue) {
                    setState(() {
                      selectedBloodType = newValue!;
                    });
                  },
                  decoration: const InputDecoration(
                    labelText: 'Golongan Darah',
                    hintText: 'Pilih Golongan Darah',
                    border: OutlineInputBorder(),
                  ),
                  items: const [
                    DropdownMenuItem<String>(
                      value: "A",
                      child: Text("A"),
                    ),
                    DropdownMenuItem<String>(
                      value: "B",
                      child: Text("B"),
                    ),
                    DropdownMenuItem<String>(
                      value: "AB",
                      child: Text("AB"),
                    ),
                    DropdownMenuItem<String>(
                      value: "O",
                      child: Text("O"),
                    ),
                  ],
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Pilih golongan darah';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                DropdownButtonFormField<String>(
                  value: selectedMaritalStatus,
                  onChanged: (newValue) {
                    setState(() {
                      selectedMaritalStatus = newValue!;
                    });
                  },
                  decoration: const InputDecoration(
                    labelText: 'Status Perkawinan',
                    hintText: 'Pilih Status Perkawinan',
                    border: OutlineInputBorder(),
                  ),
                  items: const [
                    DropdownMenuItem<String>(
                      value: "Belum Menikah",
                      child: Text("Belum Menikah"),
                    ),
                    DropdownMenuItem<String>(
                      value: "Menikah",
                      child: Text("Menikah"),
                    ),
                    DropdownMenuItem<String>(
                      value: "Cerai",
                      child: Text("Cerai"),
                    ),
                  ],
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Pilih status perkawinan';
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
                        var request = widget.userRequest;
                        request.copyWith(
                            residence: addressController.text,
                            phoneNumber: phoneNumberController.text,
                            bodyHeight: double.parse(bodyHeightController.text),
                            bodyWeight: double.parse(bodyWeightController.text),
                            bloodType: selectedBloodType!,
                            maritalStatus: selectedMaritalStatus!);

                        Navigator.pushNamed(
                            context, CompleteDataStepThreeScreen.routeName,
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
