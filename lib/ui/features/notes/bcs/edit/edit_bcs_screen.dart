import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/data/model/bcs/request/bcs_request.dart';
import 'package:digiternak_app/data/model/bcs/response/data/bcs_data.dart';
import 'package:digiternak_app/provider/bcs/bcs_provider.dart';
import 'package:digiternak_app/provider/livestock/livestock_provider.dart';
import 'package:digiternak_app/ui/home/home_screen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/loading_screen.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:digiternak_app/widget/primary_textfield.dart';
import 'package:digiternak_app/widget/snackbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EditBcsScreen extends StatefulWidget {
  static const routeName = '/edit_bcs_screen';
  late BcsData data;

  EditBcsScreen({super.key, required this.data});

  @override
  State<EditBcsScreen> createState() => _EditBcsScreenState();
}

class _EditBcsScreenState extends State<EditBcsScreen> {
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
    bcsProvider.setUpdateState();
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
        value: bcsProvider,
        child: Consumer<BcsProvider>(
          builder: (context, provider, child) {
            switch (provider.updateBcsState) {
              case ResultState.loading:
                return loadingScreen();
              default:
                return Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          PrimaryTextField(
                            placeHolder: 'Masukkan berat ternak (kg)',
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
                            placeHolder: 'Masukkan ukuran pinggang ternak (cm)',
                            controller: hipsSizeController,
                            keyboardType: TextInputType.number,
                          ),
                        ],
                      ),
                      PrimaryButton(
                          onPressed: () async {
                            if (formKey.currentState!.validate()) {
                              final request = BcsRequest(
                                  bodyWeight:
                                      int.parse(bodyWeightController.text),
                                  chestSize:
                                      int.parse(chestSizeController.text),
                                  hips: int.parse(hipsSizeController.text));

                              await bcsProvider.updateBcsById(
                                  request, widget.data.id);

                              snackBar(
                                  context: context,
                                  message:
                                      bcsProvider.updateData.message ?? "");

                              if (bcsProvider.updateBcsState ==
                                  ResultState.hasData) {
                                Navigator.pushNamedAndRemoveUntil(context,
                                    HomeScreen.routeName, (route) => false);
                              }
                            }
                          },
                          title: "Tambah"),
                    ],
                  ),
                );
            }
          },
        ),
      ),
    );
  }
}
