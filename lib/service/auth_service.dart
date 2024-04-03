import 'dart:convert';

import 'package:digiternak_app/data/model/auth/login/login_request.dart';
import 'package:digiternak_app/data/model/auth/login/login_response.dart';
import 'package:digiternak_app/data/model/auth/register/register_request.dart';
import 'package:digiternak_app/data/model/auth/register/register_response.dart';
import 'package:http/http.dart' as http;

class AuthService {
  final http.Client client;

  AuthService(this.client);

  static const String endpoint = 'https://story-api.dicoding.dev/v1';

  Future<RegisterResponse> register(RegisterRequest request) async {
    final response = await http.post(
      Uri.parse('$endpoint/register'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(request),
    );
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return RegisterResponse.fromJson(json.decode(response.body));
    } else {
      throw Exception('Fail to register');
    }
  }

  Future<LoginResponse> login(LoginRequest request) async {
    try {
      final response = await http.post(
        Uri.parse('$endpoint/login'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(request),
      );
      final result = LoginResponse.fromJson(json.decode(response.body));

      return result;
    } catch (error) {
      throw Exception('Failed to connect to the server');
    }
  }
}
