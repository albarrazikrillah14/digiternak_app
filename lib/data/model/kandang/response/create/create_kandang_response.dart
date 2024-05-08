import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_kandang_response.freezed.dart';
part 'create_kandang_response.g.dart';

@freezed
class CreateKandangResponse with _$CreateKandangResponse {
  factory CreateKandangResponse({
    required String? name,
    required String? message,
    required int? code,
    required int? status,
    required bool error,
  }) = _CreateKandangResponse;

  factory CreateKandangResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateKandangResponseFromJson(json);
}