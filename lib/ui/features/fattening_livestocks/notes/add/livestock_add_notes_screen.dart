import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:flutter/material.dart';

class LivestockAddNotesScreen extends StatefulWidget {
  static const routeName = "/livestock_add_notes_screen";
  final String id;
  const LivestockAddNotesScreen({Key? key, required this.id}) : super(key: key);

  @override
  State<LivestockAddNotesScreen> createState() =>
      _LivestockAddNotesScreenState();
}

class _LivestockAddNotesScreenState extends State<LivestockAddNotesScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: "Tambah Catatan",
      isHasBackButton: true,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                children: [const Text('Tanggal'), Text('20 Desember 2023')],
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
                  Expanded(
                    child: TextFormField(
                      decoration:
                          InputDecoration(hintText: 'lokasi pencatatan'),
                    ),
                  )
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
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(hintText: 'detail pakan'),
                    ),
                  ),
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
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Rp...',
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              const Text('Detail lainnya'),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                maxLines: 10,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'deskripsi'),
              ),
              const SizedBox(
                height: 8,
              ),
              PrimaryButton(onPressed: () {}, title: "UNGGAH"),
            ],
          ),
        ),
      ),
    );
  }
}
