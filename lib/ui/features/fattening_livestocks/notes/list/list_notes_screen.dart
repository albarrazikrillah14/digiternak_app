import 'package:digiternak_app/data/model/notes/response/data/note_data.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/note_card_widget.dart';
import 'package:flutter/material.dart';

class ListNotesScreen extends StatefulWidget {
  static const routeName = '/notes_livestock_list';
  final List<NoteData> data;
  const ListNotesScreen({super.key, required this.data});

  @override
  State<ListNotesScreen> createState() => _ListNotesScreenState();
}

class _ListNotesScreenState extends State<ListNotesScreen> {
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
