import 'package:digiternak_app/data/model/livestock/response/data/livestock_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_livestock_response.g.dart';
part 'create_livestock_response.freezed.dart';

@freezed
class CreateLivestockResponse with _$CreateLivestockResponse {
  factory CreateLivestockResponse({
    required String? name,
    required int? code,
    required int? status,
    required String? message,
    required bool error,
    required LivestockData? data,
    required List<String>? details,
  }) = _CreateLivestockResponse;

  factory CreateLivestockResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateLivestockResponseFromJson(json);
}
