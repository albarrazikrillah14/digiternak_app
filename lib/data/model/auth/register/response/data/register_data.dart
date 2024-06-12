import 'package:digiternak_app/data/model/auth/register/response/data/role/register_role.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_data.g.dart';
part 'register_data.freezed.dart';

@freezed
class RegisterData with _$RegisterData {
  factory RegisterData({
    required int id,
    required String username,
    required String email,
  }) = _RegisterData;

  factory RegisterData.fromJson(Map<String, dynamic> json) =>
      _$RegisterDataFromJson(json);
}
