import 'package:freezed_annotation/freezed_annotation.dart';
import 'result/cage_result.dart';

part 'cage_response.freezed.dart';
part 'cage_response.g.dart';

@freezed
class CageResponse with _$CageResponse {
  factory CageResponse({
    required String? name,
    required String? message,
    required int? code,
    required int? status,
    required bool? error,
    required CageResult? data,
  }) = _CageResponse;

  factory CageResponse.fromJson(Map<String, dynamic> json) =>
      _$CageResponseFromJson(json);
}
