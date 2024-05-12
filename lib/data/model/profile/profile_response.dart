import 'package:digiternak_app/data/model/auth/register/response/data/role/register_role.dart';
import 'package:digiternak_app/data/model/profile/data/profile_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_response.g.dart';
part 'profile_response.freezed.dart';

@freezed
class ProfileResponse with _$ProfileResponse {
  factory ProfileResponse({
    required String? name,
    required String? message,
    required int? code,
    required int? status,
    required bool? error,
    required ProfileData? data,
  }) = _ProfileResponse;

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);
}
