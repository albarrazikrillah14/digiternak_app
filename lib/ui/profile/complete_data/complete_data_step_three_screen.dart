import 'package:digiternak_app/data/model/profile/user_request.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:flutter/material.dart';

class CompleteDataStepThreeScreen extends StatefulWidget {
  static const routeName = "/complete_data_step_three_screen";
  final UserRequest userRequest;
  const CompleteDataStepThreeScreen({Key? key, required this.userRequest})
      : super(key: key);

  @override
  State<CompleteDataStepThreeScreen> createState() =>
      _CompleteDataStepThreeScreenState();
}

class _CompleteDataStepThreeScreenState
    extends State<CompleteDataStepThreeScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final npwpController = TextEditingController();
  final bankNumberController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    npwpController.dispose();
    bankNumberController.dispose();
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
                  controller: npwpController,
                  decoration: const InputDecoration(
                    labelText: 'Nomor NPWP...',
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
                  controller: bankNumberController,
                  decoration: const InputDecoration(
                    labelText: 'Nomor Rekening...',
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
                PrimaryButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        var request = widget.userRequest;
                        request.copyWith(
                            noNPWP: npwpController.text,
                            bankAccountNo: bankNumberController.text);
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("${request.name}")));
                      }
                    },
                    title: "SIMPAN"),
                const SizedBox(
                  height: 32,
                ),
              ],
            ),
          )),
    );
  }
}
