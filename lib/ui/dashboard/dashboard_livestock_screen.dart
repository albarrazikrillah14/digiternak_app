import 'package:digiternak_app/widget/container_widget.dart';
import 'package:digiternak_app/widget/custom_row.dart';
import 'package:flutter/material.dart';

class KandangLiveStockScreen extends StatelessWidget {
  final KandangData data;
  const KandangLiveStockScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        buildContainer(
            context: context,
            child: Column(
              children: [
                CustomRow(title: 'Id kandang', value: data.id),
                CustomRow(title: 'Lokasi kandang', value: data.lokasi),
                CustomRow(title: 'Jumlah ternak', value: "${data.jumlahSapi}"),
              ],
            ),
            title: data.name),
      ],
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
