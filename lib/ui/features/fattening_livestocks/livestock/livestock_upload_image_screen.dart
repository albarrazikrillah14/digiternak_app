import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/provider/livestock/livestock_provider.dart';
import 'package:digiternak_app/ui/upload/upload_screen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LivestockUploadImageScreen extends StatefulWidget {
  static const routeName = '/livestock_upload_image_screen';

  final int livestockId;
  const LivestockUploadImageScreen({super.key, required this.livestockId});

  @override
  State<LivestockUploadImageScreen> createState() =>
      _LivestockUploadImageScreenState();
}

class _LivestockUploadImageScreenState
    extends State<LivestockUploadImageScreen> {
  late LivestockProvider provider;

  @override
  void initState() {
    super.initState();
    provider = context.read<LivestockProvider>();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: "Tambah Gambar",
      body: ChangeNotifierProvider.value(
        value: provider,
        child: Consumer<LivestockProvider>(
          builder: (context, provider, _) {
            switch (provider.uploadState) {
              case ResultState.loading:
                return const Center(
                  child: CircularProgressIndicator(
                    color: Colors.blue,
                  ),
                );
              case ResultState.error:
                return Center(
                  child: Text(provider.message),
                );
              case ResultState.hasData:
                return Center(
                  child: PrimaryButton(
                    onPressed: () {
                      provider.setUploadState();
                    },
                    title: "Tambah Lagi",
                  ),
                );
              case ResultState.noData:
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      PrimaryButton(
                          onPressed: () {
                            Navigator.pushNamed(context, UploadScreen.routeName,
                                arguments: "bjir");
                          },
                          title: "Unggah")
                    ],
                  ),
                );
            }
          },
        ),
      ),
    );
  }
}
