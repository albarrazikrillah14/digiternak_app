import 'package:freezed_annotation/freezed_annotation.dart';
part 'type_of_livestock.g.dart';
part 'type_of_livestock.freezed.dart';

@freezed
class TypeOfLivestock with _$TypeOfLivestock {
  factory TypeOfLivestock({
    required int id,
    required String name,
  }) = _TypeOfLivestock;

  factory TypeOfLivestock.fromJson(Map<String, dynamic> json) =>
      _$TypeOfLivestockFromJson(json);
}
