import 'package:digiternak_app/data/model/bcs/response/data/bcs_data.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/bcs_card_item.dart';
import 'package:digiternak_app/widget/line_chart.dart';
import 'package:flutter/material.dart';

class ListBcsScreen extends StatefulWidget {
  static const routeName = '/list_bcs_screen';
  final List<BcsData> data;
  const ListBcsScreen({super.key, required this.data});

  @override
  State<ListBcsScreen> createState() => _ListBcsScreenState();
}

class _ListBcsScreenState extends State<ListBcsScreen> {
  String type = "List";
  List<String> diagramTypeList = [
    'Berat Badan',
    'Ukuran Dada',
    'Ukuran Pinggul'
  ];

  List<String> typeList = ["List", "Chart"];

  String diagramType = 'Berat Badan';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: "Catatan BCS",
      isHasBackButton: true,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DropdownButton<String>(
                value: type,
                hint: const Text(
                  'Tipe',
                  style: TextStyle(fontSize: 12),
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    type = newValue!;
                  });
                },
                items: typeList.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value, style: const TextStyle(fontSize: 12)),
                  );
                }).toList(),
              ),
              (type == "List")
                  ? Container()
                  : DropdownButton<String>(
                      value: diagramType,
                      hint: const Text(
                        'tipe Diagram',
                        style: TextStyle(fontSize: 12),
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          diagramType = newValue!;
                        });
                      },
                      items: diagramTypeList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child:
                              Text(value, style: const TextStyle(fontSize: 12)),
                        );
                      }).toList(),
                    ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          (type == "List")
              ? Column(
                  children: widget.data.map((item) {
                    return BcsCardWidget(data: item);
                  }).toList(),
                )
              : LineChartSample2(
                  data: widget.data,
                  type: diagramType,
                )
        ],
      ),
    );
  }
}
