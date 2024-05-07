import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/common/utils/mapper/mapper.dart';
import 'package:digiternak_app/data/model/livestock/request/livestock_request.dart';
import 'package:digiternak_app/data/model/livestock/response/data/livestock_data.dart';
import 'package:digiternak_app/provider/livestock/livestock_provider.dart';
import 'package:digiternak_app/ui/home/home_screen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UpdateLivestockScreen extends StatefulWidget {
  static const routeName = '/update_livestock_screen';

  final LivestockData data;

  const UpdateLivestockScreen({super.key, required this.data});

  @override
  State<UpdateLivestockScreen> createState() => _UpdateLivestockScreenState();
}

class _UpdateLivestockScreenState extends State<UpdateLivestockScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final birthdateController = TextEditingController();
  final chestSizeController = TextEditingController();
  final ageController = TextEditingController();
  final bodyWeightController = TextEditingController();
  final healthController = TextEditingController();

  DateTime birthDate = DateTime.now();
  late LivestockProvider provider;
  int selectedCageId = 1;
  int selectedTypeOfLivestockId = 1;
  int breedOfLivestockId = 1;
  int maintenanceId = 1;
  int soruceId = 1;
  int ownershipId = 1;
  int reproductionId = 1;
  String gender = "Jantan";

  @override
  void initState() {
    super.initState();

    provider = context.read<LivestockProvider>();
    provider.getKandang();
  }

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    birthdateController.dispose();
    chestSizeController.dispose();
    bodyWeightController.dispose();
    healthController.dispose();
    ageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: "Ubah Data Ternak",
      body: ChangeNotifierProvider.value(
        value: provider,
        child: Consumer<LivestockProvider>(
          builder: (context, provider, child) {
            switch (provider.kandangState) {
              case ResultState.loading:
                return const Center(
                  child: CircularProgressIndicator(
                    color: Colors.blue,
                  ),
                );
              case ResultState.hasData:
                final List<int> typeOfLivestockList = [1, 2];
                List<int> cageIdList = provider.kandang.data.map((value) {
                  return value.id;
                }).toList();

                final cage = provider.kandang;
                List<int> breedOfLivestockIdList = [1, 2];
                List<int> maintenanceIdList = [1, 2, 3];
                List<int> sourceIdList = [1, 2, 3, 4, 5, 6, 7, 8];
                List<int> ownershipIdList = [1, 2, 3];
                List<int> reproductionList = [
                  1,
                  2,
                  3,
                  4,
                  5,
                  6,
                  7,
                  8,
                  9,
                  10,
                  11,
                  12,
                  13,
                  14,
                  15,
                  16
                ];
                List<String> genderList = ["Jantan", "Betina"];
                return SingleChildScrollView(
                  child: Form(
                    key: formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        _TexFormField(
                          form: TextFormField(
                            controller: nameController,
                            decoration:
                                const InputDecoration(hintText: 'Nama ternak'),
                            validator: (value) {
                              if (value?.isEmpty ?? true) {
                                return 'Tidak boleh kosong';
                              }

                              return null;
                            },
                          ),
                        ),
                        _TexFormField(
                          form: TextFormField(
                            controller: birthdateController,
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
                                    birthdateController.text =
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
                        ),
                        _DropDownButton(
                          title: 'ID Kandang',
                          dropdown: DropdownButton(
                            value: selectedCageId,
                            items: cageIdList.map((e) {
                              return DropdownMenuItem(
                                  value: e,
                                  child: Text(cage.data
                                      .firstWhere((element) => element.id == e)
                                      .name));
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                selectedCageId = value ?? 0;
                              });
                            },
                          ),
                        ),
                        _DropDownButton(
                          title: "Jenis Ternak",
                          dropdown: DropdownButton(
                            value: selectedTypeOfLivestockId,
                            items: typeOfLivestockList.map((value) {
                              return DropdownMenuItem(
                                value: value,
                                child: Text(typeOfLivestockFormatter(value)),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                selectedTypeOfLivestockId = value;
                              });
                            },
                          ),
                        ),
                        _DropDownButton(
                          title: 'Jenis Indukan Ternak',
                          dropdown: DropdownButton(
                            value: breedOfLivestockId,
                            items: breedOfLivestockIdList.map((value) {
                              return DropdownMenuItem(
                                value: value,
                                child: Text(breedOfLivestockFormatter(value)),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                breedOfLivestockIdList = value;
                              });
                            },
                          ),
                        ),
                        _DropDownButton(
                          title: 'Tipe Perawatan',
                          dropdown: DropdownButton(
                            value: maintenanceId,
                            items: maintenanceIdList.map((value) {
                              return DropdownMenuItem(
                                value: value,
                                child: Text(maintenanceFormatter(value)),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                maintenanceId = value;
                              });
                            },
                          ),
                        ),
                        _DropDownButton(
                          title: 'Asal Ternak',
                          dropdown: DropdownButton(
                            value: soruceId,
                            items: sourceIdList.map((value) {
                              return DropdownMenuItem(
                                value: value,
                                child: Text(sourceFormatter(value)),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                soruceId = value;
                              });
                            },
                          ),
                        ),
                        _DropDownButton(
                          title: 'status Ternak',
                          dropdown: DropdownButton(
                            value: ownershipId,
                            items: ownershipIdList.map((value) {
                              return DropdownMenuItem(
                                value: value,
                                child: Text(ownershipStatusFormatter(value)),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                ownershipId = value;
                              });
                            },
                          ),
                        ),
                        _DropDownButton(
                          title: 'Keadaan Ternak',
                          dropdown: DropdownButton(
                            value: reproductionId,
                            items: reproductionList.map((value) {
                              return DropdownMenuItem(
                                value: value,
                                child: Text(reproductionFormatter(value)),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                reproductionList = value;
                              });
                            },
                          ),
                        ),
                        _DropDownButton(
                          title: 'Jenis Kelamin Ternak',
                          dropdown: DropdownButton(
                            value: gender,
                            items: genderList.map((value) {
                              return DropdownMenuItem(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                gender = value;
                              });
                            },
                          ),
                        ),
                        _TexFormField(
                          form: TextFormField(
                            controller: ageController,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              hintText: 'Umur ternak dalam tahun',
                            ),
                            validator: (value) {
                              if (value?.isEmpty ?? true) {
                                return 'Tidak boleh kosong';
                              }

                              return null;
                            },
                          ),
                        ),
                        _TexFormField(
                          form: TextFormField(
                            controller: chestSizeController,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              hintText: 'Lingkar dada ternak dalam cm',
                            ),
                          ),
                        ),
                        _TexFormField(
                          form: TextFormField(
                            controller: bodyWeightController,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              hintText: 'Berat badan ternak dalam kg',
                            ),
                            validator: (value) {
                              if (value?.isEmpty ?? true) {
                                return 'Tidak boleh kosong';
                              }

                              return null;
                            },
                          ),
                        ),
                        _TexFormField(
                          form: TextFormField(
                            controller: healthController,
                            keyboardType: TextInputType.multiline,
                            decoration: const InputDecoration(
                              hintText: 'Kondisi  ternak',
                            ),
                            validator: (value) {
                              if (value?.isEmpty ?? true) {
                                return 'Tidak boleh kosong';
                              }

                              return null;
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        PrimaryButton(
                            onPressed: () async {
                              final request = LivestockRequest(
                                  name: nameController.text,
                                  birthdate: formatDateString(
                                      birthdateController.text),
                                  cageId: selectedCageId,
                                  typeOfLivestockId: selectedTypeOfLivestockId,
                                  breedOfLivestockId: breedOfLivestockId,
                                  maintenanceId: maintenanceId,
                                  sourceId: soruceId,
                                  ownershipStatusId: ownershipId,
                                  reproductionId: reproductionId,
                                  gender: gender,
                                  age: ageController.text,
                                  chestSize:
                                      int.parse(chestSizeController.text),
                                  bodyWeight:
                                      int.parse(bodyWeightController.text),
                                  health: healthController.text);

                              if (formKey.currentState!.validate()) {
                                await provider.editLivestockById(
                                    request, widget.data.id);
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text(provider.message)));
                                if (provider.updateState ==
                                    ResultState.hasData) {
                                  Navigator.pushReplacementNamed(
                                      context, HomeScreen.routeName);
                                }
                              }
                            },
                            title: "Ubah Data Ternak")
                      ],
                    ),
                  ),
                );
              default:
                return Center(
                  child: Text(provider.message),
                );
            }
          },
        ),
      ),
    );
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

  Widget _TexFormField({required TextFormField form}) {
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
}
