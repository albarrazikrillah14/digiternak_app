import 'package:freezed_annotation/freezed_annotation.dart';

part 'ownership.g.dart';
part 'ownership.freezed.dart';

@freezed
class Ownership with _$Ownership {
  factory Ownership({
    required int id,
    required String name,
  }) = _Ownership;

  factory Ownership.fromJson(Map<String, dynamic> json) =>
      _$OwnershipFromJson(json);
}
