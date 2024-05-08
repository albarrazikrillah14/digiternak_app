import 'package:digiternak_app/data/model/catatan/response/data/catatan_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'catatan_response.g.dart';
part 'catatan_response.freezed.dart';

@freezed
class CatatanResponse with _$CatatanResponse {
  factory CatatanResponse({
    required String? name,
    required String? message,
    required int? code,
    required int? status,
    required bool? error,
    required CatatanData? data,
  }) = _CatatanResponse;

  factory CatatanResponse.fromJson(Map<String, dynamic> json) =>
      _$CatatanResponseFromJson(json);
}
