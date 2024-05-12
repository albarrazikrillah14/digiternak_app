import 'package:digiternak_app/data/model/auth/register/response/data/role/register_role.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_data.g.dart';
part 'profile_data.freezed.dart';

@freezed
class ProfileData with _$ProfileData {
  factory ProfileData({
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
    @JsonKey(name: 'is_verified') required bool? isVerified,
  }) = _ProfileData;

  factory ProfileData.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataFromJson(json);
}
