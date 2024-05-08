import 'package:digiternak_app/data/model/auth/register/response/data/role/register_role.dart';
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
    required int? id,
    required String? username,
    required String? email,
    @JsonKey(name: 'gender_id') required int? gender,
    required String? nik,
    @JsonKey(name: 'full_name') required String? fullName,
    required String? birthdate,
    @JsonKey(name: 'phone_number') required String? phoneNumber,
    required String? address,
    @JsonKey(name: 'is_completed') required bool? isCompleted,
    required RegisterRole? role,
  }) = _ProfileResponse;

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);
}
