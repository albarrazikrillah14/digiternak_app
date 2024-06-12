import 'package:digiternak_app/common/utils/mapper/mapper.dart';
import 'package:digiternak_app/data/model/bcs/response/data/bcs_data.dart';
import 'package:digiternak_app/ui/features/notes/bcs/detail/detail_bcs_screen.dart';
import 'package:digiternak_app/widget/custom_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class BcsCardWidget extends StatefulWidget {
  final BcsData data;
  const BcsCardWidget({super.key, required this.data});

  @override
  State<BcsCardWidget> createState() => _BcsCardWidgetState();
}

class _BcsCardWidgetState extends State<BcsCardWidget> {
  final String BASE_IMAGE_URL = dotenv.env["BASE_IMAGE_URL"]!;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, DetailBcsScreen.routeName,
            arguments: widget.data);
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.white),
        margin: const EdgeInsets.only(bottom: 16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              CustomRow(
                title: 'Tanggal',
                value: formatTanggal(widget.data.updatedAt),
              ),
              CustomRow(title: 'Berat', value: "${widget.data.bodyWeight} Kg"),
              CustomRow(
                title: 'Ukuran dada',
                value: "${widget.data.chestSize} cm",
              ),
              CustomRow(
                title: 'Ukuran pinggul',
                value: "${widget.data.hips} cm",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
