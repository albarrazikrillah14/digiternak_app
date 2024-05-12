import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/provider/home/home_provider.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/notes/add/add_note_screen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/livestock/detail/livestock_detail.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
  late HomeProvider provider;

  final GlobalKey qrKey = GlobalKey(debugLabel: "QR");
  QRViewController? controller;
  String result = "";

  @override
  void initState() {
    result = "";
    provider = context.read<HomeProvider>();
    provider.setSearchState();
    super.initState();
  }

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
            result = scanData.code ?? "";
            provider.getLivestockByVID(result);
          });
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: "Scann",
      isHasBackButton: true,
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: ChangeNotifierProvider.value(
              value: provider,
              child: Consumer<HomeProvider>(
                builder: (context, provider, child) {
                  switch (provider.stateSearch) {
                    case ResultState.noData:
                      return QRView(
                        key: qrKey,
                        onQRViewCreated: _onQRViewCreated,
                      );
                    case ResultState.loading:
                      return const Center(
                        child: CircularProgressIndicator(
                          color: Colors.blue,
                        ),
                      );
                    case ResultState.hasData:
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        switch (widget.type) {
                          case QRtype.livestocks:
                            Navigator.pushReplacementNamed(
                                context, LivestockDetail.routeName,
                                arguments: provider.livestock!.data![0]);

                            break;
                          case QRtype.notes:
                            Navigator.pushNamed(
                                context, AddNoteScreen.routeName,
                                arguments: result);
                            break;
                        }
                      });

                      return const SizedBox();

                    default:
                      return const Center(
                        child: Text('Sapi tidak ditemukan'),
                      );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
