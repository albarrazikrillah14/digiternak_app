import 'package:digiternak_app/widget/base_screen.dart';
import 'package:flutter/material.dart';

class KandangDetailScreen extends StatelessWidget {
  static const routeName = "/kandang_detail_screen";
  final String id;
  const KandangDetailScreen({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: "KandangKu",
      isHasBackButton: true,
      body: Center(
        child: Text('Detail Kandang $id'),
      ),
    );
  }
}
