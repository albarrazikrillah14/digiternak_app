import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_result.g.dart';
part 'login_result.freezed.dart';

@freezed
class LoginResult with _$LoginResult {
  factory LoginResult({
    required String token,
    required int id,
  }) = _LoginResult;

  factory LoginResult.fromJson(Map<String, dynamic> json) =>
      _$LoginResultFromJson(json);
}
