import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/data/model/bcs/request/bcs_request.dart';
import 'package:digiternak_app/provider/bcs/bcs_provider.dart';
import 'package:digiternak_app/provider/livestock/livestock_provider.dart';
import 'package:digiternak_app/ui/home/home_screen.dart';
import 'package:digiternak_app/ui/upload/upload_screen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/container_widget.dart';
import 'package:digiternak_app/widget/custom_dropdown.dart';
import 'package:digiternak_app/widget/custom_row.dart';
import 'package:digiternak_app/widget/error_widget.dart';
import 'package:digiternak_app/widget/loading_screen.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:digiternak_app/widget/primary_textfield.dart';
import 'package:digiternak_app/widget/snackbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddBcsScreen extends StatefulWidget {
  static const routeName = '/add_bcs_screen';
  const AddBcsScreen({super.key});

  @override
  State<AddBcsScreen> createState() => _AddBcsScreenState();
}

class _AddBcsScreenState extends State<AddBcsScreen> {
  late LivestockProvider livestockProvider;
  late BcsProvider bcsProvider;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController bodyWeightController = TextEditingController();
  TextEditingController chestSizeController = TextEditingController();
  TextEditingController hipsSizeController = TextEditingController();

  int livestockId = 0;

  @override
  void initState() {
    super.initState();
    livestockProvider = context.read<LivestockProvider>();
    bcsProvider = context.read<BcsProvider>();
    bcsProvider.setCreateState();
    livestockProvider.getLivestocks();
  }

  @override
  void dispose() {
    super.dispose();
    bodyWeightController.dispose();
    chestSizeController.dispose();
    hipsSizeController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
        title: "Tambah BCS",
        body: ChangeNotifierProvider.value(
          value: livestockProvider,
          child: Consumer<LivestockProvider>(
            builder: (context, provider, child) {
              switch (provider.stateAllLivestock) {
                case ResultState.loading:
                  return loadingScreen();
                case ResultState.unauthorized:
                  return errorWidget(
                      context: context, type: ErrorType.unauthorization);
                case ResultState.noData:
                  return errorWidget(
                      context: context,
                      message: provider.message,
                      onPress: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, HomeScreen.routeName, (route) => false);
                      });
                case ResultState.error:
                  return errorWidget(
                      context: context,
                      message: provider.message,
                      onPress: () {
                        livestockProvider.getLivestocks();
                      });
                case ResultState.hasData:
                  return ChangeNotifierProvider.value(
                    value: bcsProvider,
                    child: Consumer<BcsProvider>(
                      builder: (context, bcsProvider, child) {
                        switch (provider.createState) {
                          case ResultState.error:
                            return errorWidget(
                                context: context,
                                message: bcsProvider.errorMessage,
                                onPress: () {
                                  bcsProvider.setCreateState();
                                });

                          case ResultState.noData:
                            List<int?> listLivestockIds = provider
                                .allLivestock.data!
                                .map((e) => e.id)
                                .toList();
                            if (listLivestockIds.isEmpty) {
                              return const Center(
                                child: Text("Tidak ada ternak yang tersedia"),
                              );
                            }
                            if (!listLivestockIds.contains(livestockId)) {
                              livestockId = listLivestockIds.first ?? 0;
                            }

                            return Form(
                                key: formKey,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        CustomDropdownFormField(
                                            value: livestockId.toString(),
                                            onChanged: (value) {
                                              setState(() {
                                                livestockId =
                                                    int.parse(value ?? "0");
                                              });
                                            },
                                            labelText: 'Pilih ternak',
                                            items: listLivestockIds
                                                .map((e) => e.toString())
                                                .toList()
                                                .map((it) {
                                              return DropdownMenuItem(
                                                value: it.toString(),
                                                child: Text(provider
                                                        .allLivestock.data!
                                                        .firstWhere((element) =>
                                                            element.id ==
                                                            int.parse(it))
                                                        .name ??
                                                    ""),
                                              );
                                            }).toList()),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        livestockId != 0
                                            ? buildContainer(
                                                context: context,
                                                child: Column(
                                                  children: [
                                                    CustomRow(
                                                        title: 'Kode ternak',
                                                        value: provider
                                                                .allLivestock
                                                                .data!
                                                                .firstWhere(
                                                                    (element) =>
                                                                        element
                                                                            .id ==
                                                                        livestockId)
                                                                .vid ??
                                                            ""),
                                                    CustomRow(
                                                        title: 'Nama kandang',
                                                        value: provider
                                                                .allLivestock
                                                                .data!
                                                                .firstWhere(
                                                                    (element) =>
                                                                        element
                                                                            .id ==
                                                                        livestockId)
                                                                .cage
                                                                ?.name ??
                                                            ""),
                                                  ],
                                                ),
                                                title: "")
                                            : Container(),
                                        PrimaryTextField(
                                          placeHolder:
                                              'Masukkan berat ternak (kg)',
                                          controller: bodyWeightController,
                                          keyboardType: TextInputType.number,
                                        ),
                                        PrimaryTextField(
                                          placeHolder:
                                              'Masukkan ukuran lingkar dada ternak (cm)',
                                          controller: chestSizeController,
                                          keyboardType: TextInputType.number,
                                        ),
                                        PrimaryTextField(
                                          placeHolder:
                                              'Masukkan ukuran pinggang ternak (cm)',
                                          controller: hipsSizeController,
                                          keyboardType: TextInputType.number,
                                        ),
                                      ],
                                    ),
                                    PrimaryButton(
                                        onPressed: () async {
                                          if (formKey.currentState!
                                              .validate()) {
                                            final request = BcsRequest(
                                                bodyWeight: int.parse(
                                                    bodyWeightController.text),
                                                chestSize: int.parse(
                                                    chestSizeController.text),
                                                hips: int.parse(
                                                    hipsSizeController.text));

                                            await bcsProvider
                                                .createBcsByLivestockId(
                                                    request, livestockId);

                                            snackBar(
                                                context: context,
                                                message: bcsProvider
                                                        .createData.message ??
                                                    "");

                                            if (bcsProvider.createData.error ==
                                                false) {
                                              Navigator.pushReplacementNamed(
                                                context,
                                                UploadScreen.routeName,
                                                arguments: {
                                                  'type': UploadType.BCS,
                                                  'id':
                                                      "${bcsProvider.createData.data?.id ?? 0}",
                                                },
                                              );
                                            }
                                          }
                                        },
                                        title: "Tambah"),
                                  ],
                                ));
                          case ResultState.unauthorized:
                            return errorWidget(
                                context: context,
                                type: ErrorType.unauthorization);
                          default:
                            return loadingScreen();
                        }
                      },
                    ),
                  );
              }
            },
          ),
        ));
  }
}
