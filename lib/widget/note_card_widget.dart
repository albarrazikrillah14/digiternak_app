import 'package:digiternak_app/common/constant.dart';
import 'package:digiternak_app/data/model/notes/response/data/note_data.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/notes/detail/detail_note_screen.dart';
import 'package:flutter/material.dart';

class NoteCardWidget extends StatefulWidget {
  final NoteData data;
  const NoteCardWidget({super.key, required this.data});

  @override
  State<NoteCardWidget> createState() => _NoteCardWidgetState();
}

class _NoteCardWidgetState extends State<NoteCardWidget> {
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
      child: Container(
        padding: const EdgeInsets.all(4),
        margin: const EdgeInsets.all(4),
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              child: widget.data.images!.isEmpty
                  ? Image.asset(
                      "assets/ic_sapi.png",
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    )
                  : Image.network(
                      "$BASE_IMAGE_URL${widget.data.images![0]}",
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
              borderRadius: BorderRadius.circular(4),
            ),
            const SizedBox(height: 8),
            Text(
              "Nama Ternak: ${widget.data.livestockName ?? ""}",
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.black),
            ),
            Text(
              "Kode Ternak: ${widget.data.livestockVID ?? ""}",
              style: const TextStyle(
                  fontWeight: FontWeight.normal, color: Colors.grey),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              widget.data.details ?? "",
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            )
          ],
        ),
      ),
    );
  }
}
