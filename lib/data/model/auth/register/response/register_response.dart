import 'package:digiternak_app/data/model/auth/register/response/data/register_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_response.g.dart';
part 'register_response.freezed.dart';

@freezed
class RegisterResponse with _$RegisterResponse {
  factory RegisterResponse({
    required String? name,
    required int? code,
    required int? status,
    required String? message,
    required bool? error,
    required RegisterData? data,
    required List<String>? details,
  }) = _RegisterResponse;

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);
}
