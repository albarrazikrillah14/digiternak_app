import 'package:digiternak_app/data/model/livestock/response/data/livestock_data.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/livestock/search/fattening_search_livestocks_screen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:flutter/material.dart';

class ListLivestockScreen extends StatefulWidget {
  static const routeName = "/list_livestock_screen";
  final List<LivestockData> data;
  const ListLivestockScreen({super.key, required this.data});

  @override
  State<ListLivestockScreen> createState() => _ListLivestockScreenState();
}

class _ListLivestockScreenState extends State<ListLivestockScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: "List Livestock",
      body: ListView.builder(
        itemBuilder: (context, index) {
          return LivestockWidget(livestockData: widget.data[index]);
        },
        itemCount: widget.data.length,
      ),
    );
  }
}
