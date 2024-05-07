import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_data.g.dart';
part 'upload_data.freezed.dart';

@freezed
class UploadData with _$UploadData {
  factory UploadData({
    @JsonKey(name: 'livestock_images') required List<String>? images,
    @JsonKey(name: 'note_images') required List<String>? noteImages,
  }) = _UploadData;
  factory UploadData.fromJson(Map<String, dynamic> json) =>
      _$UploadDataFromJson(json);
}
