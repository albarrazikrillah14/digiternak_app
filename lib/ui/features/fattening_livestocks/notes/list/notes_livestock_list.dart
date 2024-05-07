import 'package:digiternak_app/data/model/catatan/response/data/catatan_data.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/note_card_widget.dart';
import 'package:flutter/material.dart';

class NotesLiveStockList extends StatefulWidget {
  static const routeName = '/notes_livestock_list';
  final List<CatatanData> data;
  const NotesLiveStockList({super.key, required this.data});

  @override
  State<NotesLiveStockList> createState() => _NotesLiveStockListState();
}

class _NotesLiveStockListState extends State<NotesLiveStockList> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: "Catatan Ternak",
      isHasBackButton: true,
      body: ListView.builder(
        itemBuilder: (context, index) {
          return NoteCardWidget(
              data: widget.data[widget.data.length - index - 1]);
        },
        itemCount: widget.data.length,
      ),
    );
  }
}
