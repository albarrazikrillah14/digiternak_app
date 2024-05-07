import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/data/model/livestock/response/upload_image/livestock_upload_image_response.dart';
import 'package:digiternak_app/data/service/api_service.dart';
import 'package:digiternak_app/ui/upload/upload_screen.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UploadProvider extends ChangeNotifier {
  final ApiService service;

  UploadProvider({required this.service});

  late ResultState _uploadState = ResultState.noData;
  ResultState get uploadState => _uploadState;

  XFile? imageFile;
  String? imagePath;

  bool isUploading = false;
  String message = "";
  LivestockUploadImageResponse? uploadResponse;

  void setUploadState() {
    _uploadState = ResultState.noData;
    imageFile = null;
    imagePath = null;
    notifyListeners();
  }

  void setImageFile(XFile? value) {
    imageFile = value;
    notifyListeners();
  }

  void setImagePath(String? value) {
    imagePath = value;
    notifyListeners();
  }

  Future<void> upload(
    List<int> bytes,
    UploadType type,
    String id,
    String fileName,
  ) async {
    try {
      _uploadState = ResultState.loading;
      message = "";
      uploadResponse = null;
      isUploading = true;
      notifyListeners();
      uploadResponse = await service.uploadDocument(bytes, type, id, fileName);
      if (uploadResponse?.error == true) {
        _uploadState = ResultState.error;
      } else {
        _uploadState = ResultState.hasData;
      }
      message = uploadResponse?.message ?? "success";
      isUploading = false;
      notifyListeners();
    } catch (e) {
      isUploading = false;
      message = e.toString();
      notifyListeners();
    }
  }

  Future<List<int>> compressImage(List<int> bytes) async {
    // int imageLength = bytes.length;
    // if (imageLength < 1000000) return bytes;
    // final img.Image image = img.decodeImage(Uint8List.fromList(bytes))!;
    // int compressQuality = 100;
    // int length = imageLength;
    // List<int> newByte = [];
    // do {
    //   ///
    //   compressQuality -= 10;
    //   newByte = img.encodeJpg(
    //     image,
    //     quality: compressQuality,
    //   );
    //   length = newByte.length;
    // } while (length > 1000000);
    return bytes;
  }
}
