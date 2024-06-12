import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_request.g.dart';
part 'profile_request.freezed.dart';

@freezed
class ProfileRequest with _$ProfileRequest {
  factory ProfileRequest({
    required String nik,
    @JsonKey(name: 'full_name') required String fullName,
    required String birthdate,
    @JsonKey(name: 'phone_number') required String phoneNumber,
    @JsonKey(name: 'gender') required String gender,
    required String address,
  }) = _ProfilRequest;

  factory ProfileRequest.fromJson(Map<String, String> json) =>
      _$ProfileRequestFromJson(json);
}
