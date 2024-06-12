import 'package:digiternak_app/data/model/bcs/response/data/bcs_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bcs_response.g.dart';
part 'bcs_response.freezed.dart';

@freezed
class BcsResponse with _$BcsResponse {
  factory BcsResponse({
    required String? name,
    required int? code,
    required int? status,
    required String? message,
    required bool error,
    required List<BcsData>? data,
    required List<String>? details,
  }) = _BcsResponse;

  factory BcsResponse.fromJson(Map<String, dynamic> json) =>
      _$BcsResponseFromJson(json);
}
