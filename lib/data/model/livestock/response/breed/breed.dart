import 'package:freezed_annotation/freezed_annotation.dart';

part 'breed.g.dart';
part 'breed.freezed.dart';

@freezed
class Breed with _$Breed {
  factory Breed({
    required int id,
    required String name,
  }) = _Breed;

  factory Breed.fromJson(Map<String, dynamic> json) => _$BreedFromJson(json);
}
