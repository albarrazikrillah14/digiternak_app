import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/error_widget.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRCodeScreen extends StatefulWidget {
  final String data;
  static const routeName = '/qr_code_screen';

  const QRCodeScreen({super.key, required this.data});

  @override
  State<QRCodeScreen> createState() => _QRCodeScreenState();
}

class _QRCodeScreenState extends State<QRCodeScreen> {
  final GlobalKey _qrKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: "QR Code",
      body: SizedBox(
        height: MediaQuery.of(context).size.height - 32,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RepaintBoundary(
              key: _qrKey,
              child: QrImageView(
                data: widget.data,
                version: QrVersions.auto,
                size: 250.0,
                gapless: true,
                errorStateBuilder: (ctx, error) {
                  return errorWidget(
                      context: context,
                      message: "Ternak tidak ditemukan",
                      type: ErrorType.empty);
                },
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              widget.data,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
