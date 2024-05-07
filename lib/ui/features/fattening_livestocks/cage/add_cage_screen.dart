import 'package:digiternak_app/data/model/kandang/request/kandang_request.dart';
import 'package:digiternak_app/provider/feature/fattening/cage_provider.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/primary_button.dart';
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
    provider.getAllCage();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: provider,
      child: Consumer<CageProvider>(
        builder: (context, provider, child) {
          return BaseScreen(
            title: "Tambah Kandang",
            body: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    Column(
                      children: [
                        TextFormField(
                          controller: nameController,
                          decoration: const InputDecoration(
                            hintText: 'Nama Kandang',
                          ),
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
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        TextFormField(
                          controller: locationController,
                          decoration:
                              const InputDecoration(hintText: 'Lokasi Kandang'),
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
                        const SizedBox(
                          height: 16,
                        ),
                        TextFormField(
                          controller: descriptionController,
                          decoration: const InputDecoration(
                              hintText: 'Deskripsi Kandang'),
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
                    const SizedBox(
                      height: 16,
                    ),
                    PrimaryButton(
                      onPressed: () async {
                        if (formKey.currentState!.validate()) {
                          final scaffoldMessenger =
                              ScaffoldMessenger.of(context);
                          final request = KandangRequest(
                            name: nameController.text,
                            location: locationController.text,
                            description: descriptionController.text,
                          );

                          final result = await provider.createKandang(request);

                          if (!result.error) {
                            scaffoldMessenger.showSnackBar(
                              SnackBar(content: Text(result.message)),
                            );
                            Navigator.pop(context);
                          } else {
                            scaffoldMessenger.showSnackBar(
                              SnackBar(content: Text(result.message)),
                            );
                          }
                        }
                      },
                      title: "Tambah Kandang",
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _CageContainer(KandangRequest data) {
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
