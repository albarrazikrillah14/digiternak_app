import 'dart:io';

import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/provider/upload/upload_provider.dart';
import 'package:digiternak_app/ui/home/home_screen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

enum UploadType { NOTES, LVIESTOCK }

class UploadScreen extends StatefulWidget {
  static const routeName = '/upload_screen';
  final UploadType type;
  final String id;

  const UploadScreen({Key? key, required this.type, required this.id})
      : super(key: key);

  @override
  State<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  late UploadProvider provider;

  @override
  void initState() {
    super.initState();

    provider = context.read<UploadProvider>();
    provider.setUploadState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
        title: "Upload Gambar",
        body: ChangeNotifierProvider.value(
          value: provider,
          child: Consumer<UploadProvider>(
            builder: (context, provider, child) {
              switch (provider.uploadState) {
                case ResultState.loading:
                  return const Center(
                    child: CircularProgressIndicator(
                      color: Colors.blue,
                    ),
                  );
                case ResultState.hasData:
                  return Center(
                    child: Column(
                      children: [
                        PrimaryButton(
                            onPressed: () {
                              provider.setUploadState();
                            },
                            title: "Tambah Gambar"),
                        const SizedBox(
                          height: 16,
                        ),
                        PrimaryButton(
                            onPressed: () {
                              Navigator.popAndPushNamed(
                                  context, HomeScreen.routeName);
                            },
                            title: "Selesai")
                      ],
                    ),
                  );
                case ResultState.error:
                  return const Center(
                    child: Text("Terjadi kesalahan"),
                  );
                case ResultState.noData:
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        provider.imageFile == null
                            ? const Icon(
                                Icons.image,
                                size: 64,
                              )
                            : _showImage(),
                        const SizedBox(
                          height: 16,
                        ),
                        provider.imageFile == null
                            ? Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        _OnGalleryView();
                                      },
                                      icon: const Icon(Icons.storage)),
                                  IconButton(
                                      onPressed: () {
                                        _OnCameraView();
                                      },
                                      icon: const Icon(Icons.camera))
                                ],
                              )
                            : Container(),
                        const SizedBox(
                          height: 16,
                        ),
                        const Divider(),
                        const SizedBox(
                          height: 4,
                        ),
                        PrimaryButton(
                          onPressed: () {
                            provider.setUploadState();
                          },
                          title: "Batal",
                          type: ButtonType.Delete,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        PrimaryButton(
                            onPressed: () async {
                              await _onUpload(widget.type, widget.id);
                            },
                            title: "Unggah")
                      ],
                    ),
                  );
              }
            },
          ),
        ));
  }

  _onUpload(UploadType type, String id) async {
    final provider = context.read<UploadProvider>();
    final imagePath = provider.imagePath;
    final imageFile = provider.imageFile;
    if (imagePath == null || imageFile == null) return;
    final fileName = imageFile.name;

    final bytes = await imageFile.readAsBytes();
    final newBytes = await provider.compressImage(bytes);

    await provider.upload(newBytes, type, id, fileName);
  }

  _OnGalleryView() async {
    final provider = context.read<UploadProvider>();

    final isMacOS = defaultTargetPlatform == TargetPlatform.macOS;
    final isLinux = defaultTargetPlatform == TargetPlatform.linux;
    if (isMacOS || isLinux) return;

    final ImagePicker picker = ImagePicker();

    final XFile? pickedFile =
        await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      provider.setImageFile(pickedFile);
      provider.setImagePath(pickedFile.path);
    }
  }

  _OnCameraView() async {
    final provider = context.read<UploadProvider>();
    final ImagePicker picker = ImagePicker();

    final isAndroid = defaultTargetPlatform == TargetPlatform.android;
    final isiOS = defaultTargetPlatform == TargetPlatform.iOS;
    final isNotMobile = !(isAndroid || isiOS);
    if (isNotMobile) return;

    final XFile? pickedFile =
        await picker.pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      provider.setImageFile(pickedFile);
      provider.setImagePath(pickedFile.path);
    }
  }

  Widget _showImage() {
    final imagePath = context.read<UploadProvider>().imagePath;
    return kIsWeb
        ? Image.network(
            imagePath.toString(),
            fit: BoxFit.contain,
          )
        : Image.file(
            File(imagePath.toString()),
            fit: BoxFit.contain,
          );
  }
}
