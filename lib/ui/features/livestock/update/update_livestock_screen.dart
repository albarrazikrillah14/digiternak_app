import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/common/utils/mapper/mapper.dart';
import 'package:digiternak_app/data/model/livestock/request/livestock_request.dart';
import 'package:digiternak_app/data/model/livestock/response/data/livestock_data.dart';
import 'package:digiternak_app/provider/livestock/livestock_provider.dart';
import 'package:digiternak_app/ui/home/home_screen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/custom_dropdown.dart';
import 'package:digiternak_app/widget/date_picket_widget.dart';
import 'package:digiternak_app/widget/error_widget.dart';
import 'package:digiternak_app/widget/loading_screen.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:digiternak_app/widget/primary_textfield.dart';
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
  final purposeController = TextEditingController();
  DateTime birthDate = DateTime.now();
  late LivestockProvider provider;

  int selectedCageId = -1;
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
    provider.getCages();
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
    purposeController.dispose();
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
              case ResultState.unauthorized:
                return errorWidget(
                    context: context, type: ErrorType.unauthorization);
              case ResultState.loading:
                return loadingScreen();
              case ResultState.hasData:
                final List<int> typeOfLivestockList = [1, 2];
                List<int?> cageIdList = provider.kandang.data!.map((value) {
                  return value.id;
                }).toList();

                if (selectedCageId == -1) {
                  selectedCageId = cageIdList[0] ?? 1;
                }

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

                return Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          PrimaryTextField(
                            placeHolder: 'Nama ternak',
                            controller: nameController,
                            validator: (value) {
                              if (value?.isEmpty ?? true) {
                                return 'Tidak boleh kosong';
                              }

                              return null;
                            },
                          ),
                          PrimaryTextField(
                            placeHolder: 'Tanggal lahir',
                            controller: birthdateController,
                            icon: const Icon(Icons.calendar_month),
                            iconTapped: () async {
                              String? selectedDate = await selectDate(context);
                              if (selectedDate != null) {
                                setState(() {
                                  birthdateController.text = selectedDate;
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
                          CustomDropdownFormField(
                              value: selectedCageId.toString(),
                              onChanged: (value) {
                                setState(() {
                                  selectedCageId = int.parse(value ??
                                      "${provider.kandang.data?[0].id ?? 0}");
                                });
                              },
                              labelText: 'Nama kandang',
                              items: cageIdList
                                  .map((e) => e.toString())
                                  .toList()
                                  .map((it) {
                                return DropdownMenuItem(
                                  value: it.toString(),
                                  child: Text(cage.data!
                                          .firstWhere((element) =>
                                              element.id == int.parse(it))
                                          .name ??
                                      ""),
                                );
                              }).toList()),
                          PrimaryTextField(
                            placeHolder: 'Tujuan pemeliharan',
                            keyboardType: TextInputType.text,
                            controller: purposeController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Masukkan tujuan pemeliharaan dengan benar';
                              }
                              return null;
                            },
                          ),
                          CustomDropdownFormField(
                              value: selectedTypeOfLivestockId.toString(),
                              onChanged: (value) {
                                setState(() {
                                  selectedTypeOfLivestockId =
                                      int.parse(value ?? "1");
                                });
                              },
                              labelText: 'Jenis ternak',
                              items: typeOfLivestockList
                                  .map((e) => e.toString())
                                  .toList()
                                  .map((it) {
                                return DropdownMenuItem(
                                  value: it.toString(),
                                  child: Text(
                                    typeOfLivestockFormatter(
                                      int.parse(it),
                                    ),
                                  ),
                                );
                              }).toList()),
                          CustomDropdownFormField(
                              value: breedOfLivestockId.toString(),
                              onChanged: (value) {
                                setState(() {
                                  breedOfLivestockId = int.parse(value ?? "1");
                                });
                              },
                              labelText: 'Jenis Indukan ternak',
                              items: breedOfLivestockIdList
                                  .map((e) => e.toString())
                                  .toList()
                                  .map((it) {
                                return DropdownMenuItem(
                                  value: it.toString(),
                                  child: Text(
                                      breedOfLivestockFormatter(int.parse(it))),
                                );
                              }).toList()),
                          CustomDropdownFormField(
                              value: maintenanceId.toString(),
                              onChanged: (value) {
                                setState(() {
                                  maintenanceId = int.parse(value ?? "1");
                                });
                              },
                              labelText: 'Tipe Perawatan',
                              items: maintenanceIdList
                                  .map((e) => e.toString())
                                  .toList()
                                  .map((it) => DropdownMenuItem(
                                        value: it.toString(),
                                        child: Text(maintenanceFormatter(
                                            int.parse(it))),
                                      ))
                                  .toList()),
                          CustomDropdownFormField(
                              value: soruceId.toString(),
                              onChanged: (value) {
                                setState(() {
                                  soruceId = int.parse(value ?? "1");
                                });
                              },
                              labelText: 'Asal ternak',
                              items: sourceIdList
                                  .map((e) => e.toString())
                                  .toList()
                                  .map((it) => DropdownMenuItem(
                                        value: it.toString(),
                                        child: Text(
                                            sourceFormatter(int.parse(it))),
                                      ))
                                  .toList()),
                          CustomDropdownFormField(
                              value: ownershipId.toString(),
                              onChanged: (value) {
                                setState(() {
                                  ownershipId = int.parse(value ?? "1");
                                });
                              },
                              labelText: 'Status ternak',
                              items: ownershipIdList
                                  .map((e) => e.toString())
                                  .toList()
                                  .map((it) => DropdownMenuItem(
                                        value: it.toString(),
                                        child: Text(ownershipStatusFormatter(
                                            int.parse(it))),
                                      ))
                                  .toList()),
                          CustomDropdownFormField(
                              value: reproductionId.toString(),
                              onChanged: (value) {
                                setState(() {
                                  reproductionId = int.parse(value ?? "1");
                                });
                              },
                              labelText: 'Keadaan ternak',
                              items: reproductionList
                                  .map((e) => e.toString())
                                  .toList()
                                  .map((it) => DropdownMenuItem(
                                        value: it.toString(),
                                        child: Text(reproductionFormatter(
                                            int.parse(it))),
                                      ))
                                  .toList()),
                          CustomDropdownFormField(
                            value: gender,
                            onChanged: (value) {
                              gender = value ?? "Jantan";
                            },
                            labelText: 'Jenis kelamin ternak',
                            items: genderList.map((value) {
                              return DropdownMenuItem(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                          PrimaryTextField(
                            placeHolder: 'Umur ternak (dalam tahun)',
                            controller: ageController,
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value?.isEmpty ?? true) {
                                return 'Tidak boleh kosong';
                              }

                              return null;
                            },
                          ),
                          PrimaryTextField(
                            placeHolder: 'Lingkar dada (dalam cm)',
                            controller: chestSizeController,
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value?.isEmpty ?? true) {
                                return 'Tidak boleh kosong';
                              }

                              return null;
                            },
                          ),
                          PrimaryTextField(
                            placeHolder: 'Berat badan (dalam kg)',
                            controller: bodyWeightController,
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value?.isEmpty ?? true) {
                                return 'Tidak boleh kosong';
                              }

                              return null;
                            },
                          ),
                          PrimaryTextField(
                            placeHolder: 'Kondisi ternak',
                            controller: healthController,
                            validator: (value) {
                              if (value?.isEmpty ?? true) {
                                return 'Tidak boleh kosong';
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
                                final request = LivestockRequest(
                                    name: nameController.text,
                                    birthdate: formatDateString(
                                        birthdateController.text),
                                    cageId: selectedCageId,
                                    typeOfLivestock: typeOfLivestockFormatter(
                                        selectedTypeOfLivestockId),
                                    breedOfLivestock: breedOfLivestockFormatter(
                                        breedOfLivestockId),
                                    maintenance:
                                        maintenanceFormatter(maintenanceId),
                                    purpose: purposeController.text,
                                    source: sourceFormatter((soruceId)),
                                    ownershipStatus:
                                        ownershipStatusFormatter(ownershipId),
                                    reproduction:
                                        reproductionFormatter(reproductionId),
                                    gender: gender,
                                    age: int.parse(ageController.text),
                                    chestSize:
                                        int.parse(chestSizeController.text),
                                    bodyWeight:
                                        int.parse(bodyWeightController.text),
                                    health: healthController.text);

                                if (formKey.currentState!.validate()) {
                                  await provider.editLivestockById(
                                      request, widget.data.id ?? 0);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text(provider.message)));
                                  if (provider.updateState ==
                                      ResultState.hasData) {
                                    Navigator.pushNamedAndRemoveUntil(context,
                                        HomeScreen.routeName, (route) => false);
                                  }
                                }
                              },
                              title: "Ubah Data Ternak")
                        ],
                      ),
                    ],
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
    return dropdown;
  }
}
