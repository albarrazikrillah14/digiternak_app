import 'package:digiternak_app/data/model/bcs/response/data/bcs_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_bcs_response.g.dart';
part 'create_bcs_response.freezed.dart';

@freezed
class CreateBcsResponse with _$CreateBcsResponse {
  factory CreateBcsResponse({
    required String? name,
    required int? code,
    required int? status,
    required String? message,
    required bool error,
    required BcsData? data,
    required List<String>? details,
  }) = _CreateBcsResponse;

  factory CreateBcsResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateBcsResponseFromJson(json);
}
