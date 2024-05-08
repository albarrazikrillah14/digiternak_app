import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/provider/home/home_provider.dart';
import 'package:digiternak_app/ui/auth/login/login_screen.dart';
import 'package:digiternak_app/ui/dashboard/KandangDetailScreen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashboardLivestockScreen extends StatefulWidget {
  static const routeName = "/dashboard_livestock_screen";

  const DashboardLivestockScreen({super.key});

  @override
  State<DashboardLivestockScreen> createState() =>
      _DashboardLivestockScreenState();
}

class _DashboardLivestockScreenState extends State<DashboardLivestockScreen> {
  late HomeProvider provider;

  @override
  void initState() {
    super.initState();

    provider = context.read<HomeProvider>();
    provider.getKandang(type: 'dashboard');

    if (provider.stateDashboard == ResultState.unauthorized) {
      Navigator.pushReplacementNamed(context, LoginScreen.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: "Dashboard",
      isHasBackButton: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Kandangku',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: ChangeNotifierProvider.value(
              value: provider,
              child: Consumer<HomeProvider>(
                builder: (context, provider, child) {
                  switch (provider.stateDashboard) {
                    case ResultState.loading:
                      return const Center(
                        child: CircularProgressIndicator(
                          color: Colors.blue,
                        ),
                      );
                    case ResultState.hasData:
                      return Builder(
                        builder: (context) => ListView.builder(
                          itemCount: provider.kandang.data.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, KandangDetailScreen.routeName,
                                    arguments:
                                        "${provider.kandang.data[index].id}");
                              },
                              child: KandangLiveStockScreen(
                                data: KandangData(
                                  id: "${provider.kandang.data[index].id}",
                                  name: provider.kandang.data[index].name ?? "",
                                  jumlahSapi: provider.kandang.data[index]
                                          .livestocks?.length ??
                                      0,
                                  lokasi:
                                      provider.kandang.data[index].location ??
                                          "",
                                ),
                              ),
                            );
                          },
                        ),
                      );
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
                    default:
                      return const Center(
                        child: Text('Data tidak ditemukan'),
                      );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class KandangLiveStockScreen extends StatelessWidget {
  final KandangData data;
  const KandangLiveStockScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.2),
              spreadRadius: 4,
              blurRadius: 4,
              offset: const Offset(1, 1),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/ic_sapi.png", // Perbaiki path gambar
              width: MediaQuery.of(context).size.width,
              height: 150,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Text(
                      data.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text('Jumlah Ternak'),
                            Text(
                              "${data.jumlahSapi}",
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text('Lokasi'),
                            Text(
                              data.lokasi,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                )),
            const Divider(),
          ],
        ),
      ),
    );
  }
}

class KandangData {
  final String id;
  final String name;
  final int jumlahSapi;
  final String lokasi;

  KandangData(
      {required this.id,
      required this.name,
      required this.jumlahSapi,
      required this.lokasi});
}
