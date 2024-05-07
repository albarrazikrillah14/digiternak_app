import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'catatan_request.g.dart';
part 'catatan_request.freezed.dart';

@freezed
class CatatanRequest with _$CatatanRequest {
  factory CatatanRequest({
    @JsonKey(name: 'livestock_feed') required String feed,
    required int costs,
    required String details,
  }) = _CatatanRequest;

  factory CatatanRequest.fromJson(Map<String, dynamic> json) =>
      _$CatatanRequestFromJson(json);
}
