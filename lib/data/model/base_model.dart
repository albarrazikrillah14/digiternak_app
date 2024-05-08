import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_model.freezed.dart';
part 'base_model.g.dart';

@freezed
class BaseModel with _$BaseModel {
  factory BaseModel({
    required String? name,
    required String? message,
    required int? code,
    required int? status,
    required bool error,
  }) = _BaseModel;

  factory BaseModel.fromJson(Map<String, dynamic> json) =>
      _$BaseModelFromJson(json);
}
