import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/data/model/livestock/response/data/livestock_data.dart';
import 'package:digiternak_app/provider/home/home_provider.dart';
import 'package:digiternak_app/provider/livestock/livestock_provider.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/livestock/add_livestock_screen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/livestock/detail/livestock_detail.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/custom_row.dart';
import 'package:digiternak_app/widget/error_widget.dart';
import 'package:digiternak_app/widget/image_rounded.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:digiternak_app/widget/primary_textfield.dart';
import 'package:digiternak_app/widget/qr_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeLivestockScreen extends StatefulWidget {
  static const routeName = '/fattening_search_livestock';
  const HomeLivestockScreen({super.key});

  @override
  State<HomeLivestockScreen> createState() => _HomeLivestockScreenState();
}

class _HomeLivestockScreenState extends State<HomeLivestockScreen> {
  final queryController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  final String idLiveStock = "";
  late HomeProvider provider;
  late LivestockProvider livestockProvider;

  @override
  void initState() {
    super.initState();
    provider = context.read<HomeProvider>();
    livestockProvider = context.read<LivestockProvider>();
    livestockProvider.getAllLivestock();
    provider.setSearchState();
  }

  @override
  void dispose() {
    super.dispose();
    queryController.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    provider = context.read<HomeProvider>();
    livestockProvider = context.read<LivestockProvider>();
    livestockProvider.getAllLivestock();
    provider.setSearchState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: "Ternak",
      isHasBackButton: true,
      body: ChangeNotifierProvider.value(
        value: provider,
        child: Consumer<HomeProvider>(
          builder: (context, provider, child) {
            switch (provider.stateSearch) {
              case ResultState.unauthorized:
                return errorWidget(
                    context: context, type: ErrorType.unauthorization);
              case ResultState.loading:
                return const Center(
                  child: CircularProgressIndicator(
                    color: Colors.blue,
                  ),
                );
              case ResultState.hasData:
                return const SizedBox();

              case ResultState.noData:
                return Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PrimaryTextField(
                        placeHolder: 'Masukkan kode ternak',
                        controller: queryController,
                        icon: const Icon(
                          Icons.qr_code,
                          size: 24,
                        ),
                        iconTapped: () {
                          Navigator.pushNamed(context, QRCodeWidget.routeName,
                              arguments: QRtype.livestocks);
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "query tidak boleh kosong";
                          }
                          return null;
                        },
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: 16,
                          ),
                          PrimaryButton(
                            onPressed: () async {
                              if (formKey.currentState!.validate()) {
                                provider.setSearchState();
                                await provider
                                    .getLivestockByVID(queryController.text);

                                if (provider.stateSearch ==
                                    ResultState.hasData) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text(
                                              provider.livestock?.message ??
                                                  "")));

                                  Navigator.pushReplacementNamed(
                                      context, LivestockDetail.routeName,
                                      arguments: provider.livestock?.data![0]);
                                }
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                        "Silahkan isi kode sapi terlebih dahulu"),
                                  ),
                                );
                              }
                            },
                            title: "CARI TERNAK",
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          PrimaryButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, AddLivestockScreen.routeName);
                            },
                            title: "TAMBAH TERNAK",
                          ),
                        ],
                      )
                    ],
                  ),
                );
              default:
                return errorWidget(
                    context: context,
                    message: provider.message,
                    onPress: () {
                      provider.setSearchState();
                    });
            }
          },
        ),
      ),
    );
  }
}

class LivestockWidget extends StatelessWidget {
  final LivestockData? livestockData;
  const LivestockWidget({super.key, required this.livestockData});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, LivestockDetail.routeName,
            arguments: livestockData);
      },
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                livestockData?.images!.isNotEmpty ?? true
                    ? ImageRounded(
                        image:
                            "https://storage.googleapis.com/digiternak1/${livestockData!.images?[0] ?? ""}",
                        sourceType: ImageSourceType.network,
                        width: MediaQuery.of(context).size.width,
                        height: 150,
                      )
                    : Container(),
                CustomRow(title: 'Id ternak', value: livestockData?.vid ?? ""),
                CustomRow(
                    title: 'Nama ternak', value: livestockData?.name ?? ""),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
