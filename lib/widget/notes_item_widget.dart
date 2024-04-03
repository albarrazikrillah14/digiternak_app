import 'package:flutter/material.dart';

class NoteCardItemWidget extends StatefulWidget {
  final String id;
  const NoteCardItemWidget({Key? key, required this.id}) : super(key: key);

  @override
  State<NoteCardItemWidget> createState() => _NoteCardItemWidgetState();
}

class _NoteCardItemWidgetState extends State<NoteCardItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.of(context).size.width,
        child: const Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  '9 November 2023',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Kode Kandang'),
                  Text('PUL1234'),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Kode Sapi'),
                  Text('PUL1234'),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Deskripsi Singkat',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                'Lorem ipsum dolor sit amet consectetur. Nunc a quis turpis ullamcorper volutpat. Aliquet pellentesque fusce quisque tincidunt pellentesque ultrices. Mi suspendisse duis mi eget. Metus ipsum platea et eget enim mi maec',
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                textAlign: TextAlign.justify,
              )
            ],
          ),
        ),
      ),
    );
  }
}
