import 'package:digiternak_app/common/constant.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:flutter/material.dart';

class DetailImageScreen extends StatefulWidget {
  static const routeName = '/detail_image_screen';
  final List<String> data;

  const DetailImageScreen({super.key, required this.data});

  @override
  State<DetailImageScreen> createState() => _DetailImageScreenState();
}

class _DetailImageScreenState extends State<DetailImageScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
        title: "Detail Gambar",
        body: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8),
              child: Image.network(
                "$BASE_IMAGE_URL${widget.data[index]}",
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fitWidth,
              ),
            );
          },
          itemCount: widget.data.length,
        ));
  }
}
