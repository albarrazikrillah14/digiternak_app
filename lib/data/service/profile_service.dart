import 'dart:convert';
import 'package:digiternak_app/data/model/profile/profile_response.dart';
import 'package:digiternak_app/data/model/profile/put/edit_profile_response.dart';
import 'package:digiternak_app/data/model/profile/request/profile_request.dart';
import 'package:digiternak_app/data/remote/auth/auth_repository.dart';
import 'package:http/http.dart' as http;

class ProfileService {
  static const String endpoint = 'https://digiternak-420314.uc.r.appspot.com';

  final AuthRepository authRepository;

  ProfileService(this.authRepository);

  Future<String> getToken() async {
    final token = await authRepository.getToken();
    return token ?? '';
  }

  Future<EditProfileResponse> editProfile(ProfileRequest request) async {
    final token = await getToken();
    final response = await http.put(Uri.parse('$endpoint/user/edit-profile'),
        headers: <String, String>{
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token'
        },
        body: jsonEncode(request));
    return EditProfileResponse.fromJson(jsonDecode(response.body));
  }

  Future<ProfileResponse> getUserProfile() async {
    final token = await getToken();
    final response = await http.get(
      Uri.parse('https://digiternak-420314.uc.r.appspot.com/user/profile'),
      headers: <String, String>{
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token'
      },
    );
    final result = ProfileResponse.fromJson(jsonDecode(response.body));
    return result;
  }
}
