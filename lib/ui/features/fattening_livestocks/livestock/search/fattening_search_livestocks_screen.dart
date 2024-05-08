import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/data/model/livestock/response/data/livestock_data.dart';
import 'package:digiternak_app/provider/home/home_provider.dart';
import 'package:digiternak_app/provider/livestock/livestock_provider.dart';
import 'package:digiternak_app/ui/auth/login/login_screen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/livestock/add_livestock_screen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/livestock/detail/livestock_detail.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:digiternak_app/widget/qr_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FatteningSearchLiveStocksScreen extends StatefulWidget {
  static const routeName = '/fattening_search_livestock';
  const FatteningSearchLiveStocksScreen({super.key});

  @override
  State<FatteningSearchLiveStocksScreen> createState() =>
      _FatteningSearchLiveStocksScreenState();
}

class _FatteningSearchLiveStocksScreenState
    extends State<FatteningSearchLiveStocksScreen> {
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

    if (provider.stateSearch == ResultState.unauthorized) {
      Navigator.pushReplacementNamed(context, LoginScreen.routeName);
    }
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
      body: SingleChildScrollView(
        child: ChangeNotifierProvider.value(
          value: provider,
          child: Consumer<HomeProvider>(
            builder: (context, provider, child) {
              switch (provider.stateSearch) {
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
                      children: [
                        TextFormField(
                          controller: queryController,
                          decoration: InputDecoration(
                            hintText: "Masukkan Kode Sapi",
                            suffixIcon: IconButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, QRCodeWidget.routeName,
                                    arguments: QRtype.livestocks);
                              },
                              icon: const Icon(
                                Icons.qr_code,
                                size: 24,
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "query tidak boleh kosong";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        PrimaryButton(
                          onPressed: () async {
                            if (formKey.currentState!.validate()) {
                              await provider
                                  .getLivestockByVID(queryController.text);

                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text(provider.message)));

                              Navigator.pushReplacementNamed(
                                  context, LivestockDetail.routeName,
                                  arguments: provider.livestock?.data![0]);
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
                        const SizedBox(height: 20),
                      ],
                    ),
                  );
                default:
                  return Center(
                    child: PrimaryButton(
                        onPressed: () {
                          provider.setSearchState();
                        },
                        title: "Ulangi"),
                  );
              }
            },
          ),
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
        print("${livestockData}");
        Navigator.pushNamed(context, LivestockDetail.routeName,
            arguments: livestockData);
      },
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                livestockData?.images!.isNotEmpty ?? true
                    ? Image.network(
                        "https://storage.googleapis.com/digiternak1/${livestockData!.images?[0] ?? ""}",
                        width: MediaQuery.of(context).size.width,
                        height: 150,
                        fit: BoxFit.cover)
                    : Image.asset("assets/ic_sapi.png",
                        width: MediaQuery.of(context).size.width,
                        height: 150,
                        fit: BoxFit.cover),
                const SizedBox(height: 8),
                Text(
                  "${livestockData?.name ?? ""} - ${livestockData?.vid ?? ""}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
