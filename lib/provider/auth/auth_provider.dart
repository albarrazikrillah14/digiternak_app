import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/data/model/auth/login/request/login_request.dart';
import 'package:digiternak_app/data/model/auth/login/response/login_response.dart';
import 'package:digiternak_app/data/model/auth/register/request/register_request.dart';
import 'package:digiternak_app/data/model/auth/register/response/register_response.dart';
import 'package:digiternak_app/data/remote/auth/auth_repository.dart';
import 'package:digiternak_app/data/service/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthProvider extends ChangeNotifier {
  final AuthRepository authRepository;
  late AuthService authService;

  AuthProvider(this.authRepository) {
    authService = AuthService(http.Client());
  }

  late ResultState _state = ResultState.noData;
  late bool _error;
  String _message = '';

  ResultState get state => _state;
  bool get error => _error;
  String get message => _message;

  Future<String> isLoggedIn() async {
    return await authRepository.isLoggedIn();
  }

  Future<bool> logout() async {
    return await authRepository.logout();
  }

  Future<void> saveToken(String token) async {
    await authRepository.saveToken(token);
  }

  Future<void> removeToken() async {
    await authRepository.deleteToken();
  }

  Future<LoginResponse> login(LoginRequest request) async {
    _state = ResultState.loading;
    notifyListeners();

    final result = await authService.login(request);

    _error = result.error;
    if (!_error) {
      _state = ResultState.hasData;
    } else {
      _state = ResultState.error;
    }
    _message = result.message;
    notifyListeners();
    return result;
  }

  Future<RegisterResponse> register(RegisterRequest request) async {
    _state = ResultState.loading;
    notifyListeners();

    final result = await authService.register(request);

    _error = result.error ?? false;
    if (!_error) {
      _state = ResultState.hasData;
    } else {
      _state = ResultState.error;
      _message = result.details ?? "";
    }

    notifyListeners();
    return result;
  }

  void setState() {
    _state = ResultState.noData;
    notifyListeners();
  }
}
