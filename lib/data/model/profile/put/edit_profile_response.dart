import 'package:digiternak_app/data/model/profile/profile_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_profile_response.g.dart';
part 'edit_profile_response.freezed.dart';

@freezed
class EditProfileResponse with _$EditProfileResponse {
  factory EditProfileResponse({
    required String? name,
    required String? message,
    required int? code,
    required int? status,
    required bool? error,
    required ProfileResponse? data,
  }) = _EditProfileResponse;

  factory EditProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$EditProfileResponseFromJson(json);
}
