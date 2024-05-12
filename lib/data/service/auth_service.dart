import 'dart:convert';

import 'package:digiternak_app/data/model/auth/login/request/login_request.dart';
import 'package:digiternak_app/data/model/auth/login/response/login_response.dart';
import 'package:digiternak_app/data/model/auth/register/request/register_request.dart';
import 'package:digiternak_app/data/model/auth/register/response/register_response.dart';
import 'package:http/http.dart' as http;

class AuthService {
  final http.Client client;

  AuthService(this.client);

  static const String endpoint = 'https://digiternak-420314.uc.r.appspot.com';

  Future<RegisterResponse> register(RegisterRequest request) async {
    final response = await http.post(
      Uri.parse('$endpoint/user/register'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        "Access-Control_Allow_Origin": "*"
      },
      body: jsonEncode(request),
    );
    return RegisterResponse.fromJson(json.decode(response.body));
  }

  Future<LoginResponse> login(LoginRequest request) async {
    final response = await http.post(
      Uri.parse('$endpoint/user/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        "Access-Control_Allow_Origin": "*"
      },
      body: jsonEncode(request),
    );
    return LoginResponse.fromJson(json.decode(response.body));
  }
}
