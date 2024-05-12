import 'package:freezed_annotation/freezed_annotation.dart';
import 'result/cage_result.dart';

part 'cages_response.freezed.dart';
part 'cages_response.g.dart';

@freezed
class CagesResponse with _$CagesResponse {
  factory CagesResponse({
    required String? name,
    required String? message,
    required int? code,
    required int? status,
    required bool? error,
    required List<CageResult>? data,
  }) = _CagesResponse;

  factory CagesResponse.fromJson(Map<String, dynamic> json) =>
      _$CagesResponseFromJson(json);
}
