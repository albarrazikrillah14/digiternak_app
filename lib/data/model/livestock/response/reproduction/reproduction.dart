import 'package:freezed_annotation/freezed_annotation.dart';

part 'reproduction.g.dart';
part 'reproduction.freezed.dart';

@freezed
class Reproduction with _$Reproduction {
  factory Reproduction({
    required int id,
    required String name,
  }) = _Reproduction;

  factory Reproduction.fromJson(Map<String, dynamic> json) =>
      _$ReproductionFromJson(json);
}
