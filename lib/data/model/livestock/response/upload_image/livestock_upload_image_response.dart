import 'package:digiternak_app/data/model/livestock/response/upload_image/upload_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'livestock_upload_image_response.freezed.dart';
part 'livestock_upload_image_response.g.dart';

@freezed
class LivestockUploadImageResponse with _$LivestockUploadImageResponse {
  factory LivestockUploadImageResponse({
    required String message,
    required bool error,
    required UploadData data,
  }) = _LivestockUploadImageResponse;

  factory LivestockUploadImageResponse.fromJson(Map<String, dynamic> json) =>
      _$LivestockUploadImageResponseFromJson(json);
}
