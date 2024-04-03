import 'package:digiternak_app/provider/auth/auth_provider.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/notes/add/livestock_add_notes_screen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/search/detail/livestock_detail.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

enum QRtype {
  notes,
  livestocks,
}

class QRCodeWidget extends StatefulWidget {
  static const routeName = "/qr_code_widget";
  final QRtype type;
  const QRCodeWidget({super.key, required this.type});

  @override
  State<QRCodeWidget> createState() => _QRCodeWidgetState();
}

class _QRCodeWidgetState extends State<QRCodeWidget> {
  final GlobalKey qrKey = GlobalKey(debugLabel: "QR");
  QRViewController? controller;
  String result = "";

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        if (result.isEmpty) {
          setState(() {
            result = scanData.code!;
          });
          switch (widget.type) {
            case QRtype.livestocks:
              Navigator.pushNamed(context, LivestockDetail.routeName,
                  arguments: result);
              break;
            case QRtype.notes:
              Navigator.pushNamed(context, LivestockAddNotesScreen.routeName,
                  arguments: result);
              break;
          }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      state: ResultState.hasData,
      title: "Scann",
      isHasBackButton: true,
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: QRView(
              key: qrKey,
              onQRViewCreated: _onQRViewCreated,
            ),
          ),
        ],
      ),
    );
  }
}
