import 'package:freezed_annotation/freezed_annotation.dart';

part 'cage_request.g.dart';
part 'cage_request.freezed.dart';

@freezed
class CageRequest with _$CageRequest {
  factory CageRequest({
    required String name,
    required String location,
    required String description,
  }) = _CageRequest;

  factory CageRequest.fromJson(Map<String, dynamic> json) =>
      _$CageRequestFromJson(json);
}
