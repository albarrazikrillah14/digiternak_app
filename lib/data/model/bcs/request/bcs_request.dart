import 'package:freezed_annotation/freezed_annotation.dart';

part 'bcs_request.g.dart';
part 'bcs_request.freezed.dart';

@freezed
class BcsRequest with _$BcsRequest {
  factory BcsRequest({
    @JsonKey(name: 'body_weight') required int bodyWeight,
    @JsonKey(name: 'chest_size') required int chestSize,
    required int hips,
  }) = _BcsRequest;

  factory BcsRequest.fromJson(Map<String, dynamic> json) =>
      _$BcsRequestFromJson(json);
}
