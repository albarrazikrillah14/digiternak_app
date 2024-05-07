import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_role.g.dart';
part 'register_role.freezed.dart';

@freezed
class RegisterRole with _$RegisterRole {
  factory RegisterRole({
    required int id,
    required String name,
  }) = _RegisterRole;

  factory RegisterRole.fromJson(Map<String, dynamic> json) =>
      _$RegisterRoleFromJson(json);
}
