import 'package:freezed_annotation/freezed_annotation.dart';

part 'cage.g.dart';
part 'cage.freezed.dart';

@freezed
class Cage with _$Cage {
  factory Cage({
    required int id,
    required String name,
  }) = _Cage;

  factory Cage.fromJson(Map<String, dynamic> json) => _$CageFromJson(json);
}
