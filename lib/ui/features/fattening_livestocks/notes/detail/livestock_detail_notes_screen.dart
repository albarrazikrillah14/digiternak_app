import 'package:digiternak_app/common/constant.dart';
import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/data/model/catatan/response/data/catatan_data.dart';
import 'package:digiternak_app/provider/notes/notes_provider.dart';
import 'package:digiternak_app/ui/detail_image/detail_image_screen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/notes/update/livestock_update_notes.dart';
import 'package:digiternak_app/ui/home/home_screen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LivestockDetailNotes extends StatefulWidget {
  static const routeName = "/livestock_detail_notes";
  final int id;
  const LivestockDetailNotes({super.key, required this.id});

  @override
  State<LivestockDetailNotes> createState() => _LivestockDetailNotesState();
}

class _LivestockDetailNotesState extends State<LivestockDetailNotes> {
  late NotesProvider provider;
  @override
  void initState() {
    super.initState();

    provider = context.read<NotesProvider>();
    provider.getNoteById(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: "Detail Catatan",
      isHasBackButton: true,
      body: ChangeNotifierProvider.value(
        value: provider,
        child: Consumer<NotesProvider>(
          builder: (context, provider, child) {
            switch (provider.stateNote) {
              case ResultState.loading:
                return const Center(
                  child: CircularProgressIndicator(
                    color: Colors.blue,
                  ),
                );

              case ResultState.noData:
                return const Center(
                  child: Text('Data Tidak ditemukan'),
                );
              case ResultState.hasData:
                final CatatanData data = provider.note;
                return SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            data.dateRecorded,
                            style: const TextStyle(
                                fontSize: 10, color: Colors.grey),
                          ),
                          Text(
                            data.location,
                            style: const TextStyle(
                                fontSize: 10, color: Colors.grey),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            data.livestockVID,
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                          Text(
                            data.livestockCage,
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text("Makanan: ${data.livestockFeed}"),
                      Text(
                        data.details,
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text("Biaya Rp.${data.costs}"),
                      const SizedBox(
                        height: 16,
                      ),
                      (data.images?.isEmpty ?? true)
                          ? Container()
                          : Column(
                              children: [
                                const Text("Dokumentasi"),
                                const SizedBox(
                                  height: 8,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, DetailImageScreen.routeName,
                                        arguments: data.images!);
                                  },
                                  child: SizedBox(
                                    height: 120,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding: const EdgeInsets.all(4),
                                          child: Image.network(
                                            "$BASE_IMAGE_URL${data.images![index]}",
                                            height: 120,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                2,
                                            fit: BoxFit.cover,
                                          ),
                                        );
                                      },
                                      itemCount: data.images?.length ?? 0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 16,
                      ),
                      PrimaryButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, LivestockUpdateNotes.routeName,
                                arguments: provider.note);
                          },
                          title: "Ubah Catatan"),
                      const SizedBox(
                        height: 16,
                      ),
                      PrimaryButton(
                        onPressed: () async {
                          await provider.deleteNoteById(data.id);

                          Navigator.popAndPushNamed(
                              context, HomeScreen.routeName);
                        },
                        title: "Hapus Catatan",
                        type: ButtonType.Delete,
                      ),
                    ],
                  ),
                );

              case ResultState.error:
                return const Center(
                  child: Text("Terjadi Kesalahan"),
                );
            }
          },
        ),
      ),
    );
  }
}
