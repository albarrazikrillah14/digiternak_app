import 'package:digiternak_app/data/model/profile/profile_response.dart';
import 'package:digiternak_app/data/model/profile/put/edit_profile_response.dart';
import 'package:digiternak_app/data/model/profile/request/profile_request.dart';
import 'package:digiternak_app/data/service/profile_service.dart';

class ProfileRepository {
  ProfileService service;

  ProfileRepository({required this.service});

  Future<ProfileResponse> getProfile() async {
    final result = await service.getUserProfile();
    return result;
  }

  Future<EditProfileResponse> editProfile(ProfileRequest request) async {
    return await service.editProfile(request);
  }
}
