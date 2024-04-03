import 'package:digiternak_app/ui/dashboard/KandangDetailScreen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:flutter/material.dart';

class DashboardLivestockScreen extends StatelessWidget {
  static const routeName = "/dashboard_livestock_screen";

  const DashboardLivestockScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: "Dashboard",
      isHasBackButton: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Kandangku',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: Builder(
              builder: (context) => ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                          context, KandangDetailScreen.routeName,
                          arguments: "lkjkldjfkdlf");
                    },
                    child: KandangLiveStockScreen(
                      data: KandangData(
                        id: "eke",
                        name: "Kandang ke ${index}",
                        jumlahSapi: 30,
                        lokasi: 'Dramaga',
                      ),
                    ),
                  );
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
  const KandangLiveStockScreen({Key? key, required this.data})
      : super(key: key);

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
                            const Text('Jumlah Sapi'),
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
