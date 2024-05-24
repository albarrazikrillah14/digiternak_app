import 'package:digiternak_app/widget/base_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DetailImageScreen extends StatefulWidget {
  static const routeName = '/detail_image_screen';
  final List<String> data;

  const DetailImageScreen({Key? key, required this.data}) : super(key: key);

  @override
  State<DetailImageScreen> createState() => _DetailImageScreenState();
}

class _DetailImageScreenState extends State<DetailImageScreen> {
  final String BASE_IMAGE_URL = dotenv.env["BASE_IMAGE_URL"]!;

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: "Detail Gambar",
      body: SizedBox(
        height: MediaQuery.of(context).size.height - 32,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: widget.data.map((it) {
            return Image.network(
              "$BASE_IMAGE_URL$it",
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fitWidth,
            );
          }).toList(),
        ),
      ),
    );
  }
}
