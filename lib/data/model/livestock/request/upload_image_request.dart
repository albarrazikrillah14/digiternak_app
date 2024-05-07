import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_image_request.freezed.dart';

@freezed
class UploadImageRequest with _$UploadImageRequest {
  factory UploadImageRequest({
    @JsonKey(name: 'livestock_image') required File image,
    required String id,
  }) = _UploadImageRequest;
}
