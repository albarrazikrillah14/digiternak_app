import 'package:digiternak_app/ui/features/fattening_livestocks/notes/detail/livestock_detail_notes_screen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/notes_item_widget.dart';
import 'package:flutter/material.dart';

class NotesLiveStockList extends StatefulWidget {
  static const routeName = '/notes_livestock_list';
  final String id;
  const NotesLiveStockList({Key? key, required this.id}) : super(key: key);

  @override
  State<NotesLiveStockList> createState() => _NotesLiveStockListState();
}

class _NotesLiveStockListState extends State<NotesLiveStockList> {
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: "Catatan Ternak",
      isHasBackButton: true,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, LivestockDetailNotes.routeName,
                    arguments: widget.id);
              },
              child: NoteCardItemWidget(
                id: 'bjir',
              ),
            );
          },
          itemCount: 8,
        ),
      ),
    );
  }
}
