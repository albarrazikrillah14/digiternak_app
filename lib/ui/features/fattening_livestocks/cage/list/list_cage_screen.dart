import 'package:digiternak_app/data/model/kandang/response/result/kandang_result.dart';
import 'package:digiternak_app/ui/dashboard/DashboardLivestockScreen.dart';
import 'package:digiternak_app/ui/dashboard/KandangDetailScreen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:flutter/material.dart';

class ListCageScreen extends StatefulWidget {
  static const routeName = '/list_cage_screen';
  final List<KandangResult> data;

  const ListCageScreen({super.key, required this.data});

  @override
  State<ListCageScreen> createState() => _ListCageScreenState();
}

class _ListCageScreenState extends State<ListCageScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: "List Kandang",
      body: ListView.builder(
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, KandangDetailScreen.routeName,
                  arguments: "${widget.data[index].id}");
            },
            child: KandangLiveStockScreen(
              data: KandangData(
                id: "${widget.data[index].id}",
                name: widget.data[index].name ?? "",
                jumlahSapi: widget.data[index].livestocks?.length ?? 0,
                lokasi: widget.data[index].location ?? "",
              ),
            ),
          );
        },
        itemCount: widget.data.length,
      ),
    );
  }
}
