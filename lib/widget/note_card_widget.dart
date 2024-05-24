import 'package:digiternak_app/common/utils/mapper/mapper.dart';
import 'package:digiternak_app/data/model/notes/response/data/note_data.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/notes/detail/detail_note_screen.dart';
import 'package:digiternak_app/widget/container_widget.dart';
import 'package:digiternak_app/widget/custom_row.dart';
import 'package:digiternak_app/widget/image_rounded.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class NoteCardWidget extends StatefulWidget {
  final NoteData data;
  const NoteCardWidget({super.key, required this.data});

  @override
  State<NoteCardWidget> createState() => _NoteCardWidgetState();
}

class _NoteCardWidgetState extends State<NoteCardWidget> {
  final String BASE_IMAGE_URL = dotenv.env["BASE_IMAGE_URL"]!;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, DetailNoteScreen.routeName,
            arguments: widget.data.id);
      },
      child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          buildContainer(
              context: context,
              child: Column(
                children: [
                  widget.data.images!.isEmpty
                      ? ImageRounded(
                          image: "assets/ic_sapi.png",
                          height: 100,
                          width: MediaQuery.of(context).size.width,
                        )
                      : ImageRounded(
                          image: "$BASE_IMAGE_URL${widget.data.images![0]}",
                          sourceType: ImageSourceType.network,
                          height: 100,
                          width: MediaQuery.of(context).size.width,
                        ),
                  CustomRow(
                    title: 'Tanggal',
                    value: formatTanggal(widget.data.dateRecorded ?? ""),
                  ),
                  CustomRow(
                      title: 'Kode ternak',
                      value: widget.data.livestockVID ?? ""),
                  CustomRow(
                    title: 'Detail',
                    value: safeSubstring(widget.data.details ?? "", 0, 10),
                  ),
                ],
              ),
              title: widget.data.livestockName ?? ""),
        ],
      ),
    );
  }
}
