import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/data/model/profile/profile_response.dart';
import 'package:digiternak_app/data/model/profile/put/edit_profile_response.dart';
import 'package:digiternak_app/data/model/profile/request/profile_request.dart';
import 'package:digiternak_app/data/remote/auth/auth_repository.dart';
import 'package:digiternak_app/data/remote/profile/profile_repository.dart';
import 'package:digiternak_app/data/service/profile_service.dart';
import 'package:flutter/material.dart';

class ProfileProvider extends ChangeNotifier {
  final ProfileRepository profileRepository;
  late ProfileService service;

  ProfileProvider(this.profileRepository) {
    service = ProfileService(AuthRepository());
  }

  late ProfileResponse _data;
  late ResultState _state = ResultState.noData;
  late bool _error;
  late String _message = "";

  ResultState get state => _state;
  bool get error => _error;
  String get message => _message;
  ProfileResponse get data => _data;

  Future<void> getProfile() async {
    _state = ResultState.loading;
    notifyListeners();
    final result = await profileRepository.getProfile();

    if (result.username.isEmpty) {
      _state = ResultState.noData;
      _error = true;
      _message = 'Data not found';
      notifyListeners();
    } else {
      _state = ResultState.hasData;
      _data = result;
      _error = false;
      notifyListeners();
    }
  }

  Future<EditProfileResponse> editProfile(ProfileRequest request) async {
    _state = ResultState.loading;
    notifyListeners();

    final result = await profileRepository.editProfile(request);
    if (result.error == false) {
      _state = ResultState.hasData;
      _error = false;
      notifyListeners();
    } else {
      _state = ResultState.error;
      _error = true;
      _message = result.message;
      notifyListeners();
    }

    return result;
  }
}
