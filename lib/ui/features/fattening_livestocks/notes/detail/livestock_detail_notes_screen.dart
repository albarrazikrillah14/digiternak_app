import 'package:digiternak_app/provider/auth/auth_provider.dart';
import 'package:digiternak_app/provider/feature/fattening/livestock_notes_provider.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LivestockDetailNotes extends StatefulWidget {
  static const routeName = "/livestock_detail_notes";
  final String id;
  const LivestockDetailNotes({Key? key, required this.id}) : super(key: key);

  @override
  State<LivestockDetailNotes> createState() => _LivestockDetailNotesState();
}

class _LivestockDetailNotesState extends State<LivestockDetailNotes> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LivestockNotesProvider(),
      child: Consumer<LivestockNotesProvider>(
        builder: (context, provider, _) {
          return BaseScreen(
            title: "Detail Catatan",
            isHasBackButton: true,
            state: provider.state,
            body: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        'assets/ic_sapi.png',
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [const Text('Kode Sapi'), Text(widget.id)],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [const Text('Kode Kandang'), Text(widget.id)],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Tanggal'),
                        Text('20 Desember 2023')
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Lokasi'),
                        const SizedBox(
                          width: 8,
                        ),
                        Text('Kab Bogor, swokjreklrej'),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Pakan'),
                        const SizedBox(
                          width: 8,
                        ),
                        Text('Pakan detail kjdflkdjfldkfjdlkfjlkj'),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Biaya'),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Rp 100.000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text('Detail lainnya'),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(),
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        'kdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfjkdjflkdjfldkfjdlkfj',
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
