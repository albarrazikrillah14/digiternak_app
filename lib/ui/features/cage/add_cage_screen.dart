import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/data/model/cage/request/cage_request.dart';
import 'package:digiternak_app/provider/cage/cage_provider.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/dialog_widget.dart';
import 'package:digiternak_app/widget/error_widget.dart';
import 'package:digiternak_app/widget/loading_screen.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:digiternak_app/widget/primary_textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddCageScreen extends StatefulWidget {
  static const routeName = '/add_cage_screen';
  const AddCageScreen({super.key});

  @override
  State<AddCageScreen> createState() => _AddCageScreenState();
}

class _AddCageScreenState extends State<AddCageScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final locationController = TextEditingController();
  final descriptionController = TextEditingController();
  late CageProvider provider;

  @override
  void initState() {
    super.initState();

    provider = context.read<CageProvider>();
    provider.setState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: "Tambah Kandang",
      body: ChangeNotifierProvider.value(
        value: provider,
        child: Consumer<CageProvider>(
          builder: (context, provider, child) {
            switch (provider.state) {
              case ResultState.error:
                return errorWidget(
                  context: context,
                  message: provider.message,
                  onPress: () {
                    provider.setState();
                  },
                );
              case ResultState.unauthorized:
                return errorWidget(
                  context: context,
                  type: ErrorType.unauthorization,
                );
              case ResultState.loading:
                return loadingScreen();
              case ResultState.noData:
                return Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          PrimaryTextField(
                            placeHolder: 'Nama kandang',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Masukkan nilai dengan benar';
                              }

                              final regex = RegExp(r'^[A-Za-z0-9\s]{3,10}$');
                              if (!regex.hasMatch(value)) {
                                return 'Nilai harus terdiri dari 3 hingga 10 karakter dan hanya boleh mengandung huruf, angka, dan spasi';
                              }
                              return null;
                            },
                            controller: nameController,
                          ),
                          PrimaryTextField(
                            placeHolder: 'Lokasi kandang',
                            controller: locationController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Masukkan nilai dengan benar';
                              }
                              if (value.length > 255) {
                                return 'Nilai tidak boleh melebihi 255 karakter';
                              }
                              return null;
                            },
                          ),
                          PrimaryTextField(
                            placeHolder: 'Deskripsi kandang',
                            controller: descriptionController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Masukkan nilai dengan benar';
                              }
                              if (value.length > 255) {
                                return 'Nilai tidak boleh melebihi 255 karakter';
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: 16,
                          ),
                          PrimaryButton(
                            onPressed: () async {
                              if (formKey.currentState!.validate()) {
                                final scaffoldMessenger =
                                    ScaffoldMessenger.of(context);
                                final request = CageRequest(
                                  name: nameController.text,
                                  location: locationController.text,
                                  description: descriptionController.text,
                                );

                                showAlertDialog(
                                  context: context,
                                  title: "Tambah Kandang",
                                  messsage: "Apakah data kandang sudah benar?",
                                  onSuccess: () async {
                                    final result =
                                        await provider.createCage(request);

                                    if (result.error == true) {
                                      scaffoldMessenger.showSnackBar(
                                        SnackBar(
                                            content: Text(result.details![0])),
                                      );
                                      Navigator.pop(context);
                                    } else {
                                      scaffoldMessenger.showSnackBar(
                                        SnackBar(
                                            content:
                                                Text(result.message ?? "")),
                                      );
                                      Navigator.pop(context);
                                      if (result.status != 401) {
                                        Navigator.pop(context);
                                      }
                                    }
                                  },
                                );
                              }
                            },
                            title: "Tambah Kandang",
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              default:
                return Container();
            }
          },
        ),
      ),
    );
  }

  Widget _CageContainer(CageRequest data) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(data.name),
              Text(data.location),
            ],
          ),
          const Divider()
        ],
      ),
    );
  }
}
