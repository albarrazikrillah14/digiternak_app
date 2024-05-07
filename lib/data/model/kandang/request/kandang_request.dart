import 'package:freezed_annotation/freezed_annotation.dart';

part 'kandang_request.g.dart';
part 'kandang_request.freezed.dart';

@freezed
class KandangRequest with _$KandangRequest {
  factory KandangRequest({
    required String name,
    required String location,
    required String description,
  }) = _KandangRequest;

  factory KandangRequest.fromJson(Map<String, dynamic> json) =>
      _$KandangRequestFromJson(json);
}
