import 'package:digiternak_app/data/model/livestock/response/cage/cage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'livestock_data.g.dart';
part 'livestock_data.freezed.dart';

@freezed
class LivestockData with _$LivestockData {
  factory LivestockData({
    required int? id,
    @JsonKey(name: 'user_id') required int? userId,
    required String? eid,
    required String? vid,
    required String? name,
    required String? birthdate,
    required String? gender,
    required int? age,
    @JsonKey(name: 'chest_size') required int? chestSize,
    @JsonKey(name: 'body_weight') required int? bodyWeight,
    required String? health,
    required Cage? cage,
    @JsonKey(name: 'type_of_livestock') required String? typeOfLivestock,
    @JsonKey(name: 'breed_of_livestock') required String? breedOfLivestock,
    required String? purpose,
    @JsonKey(name: 'maintenance') required String? typeOfCage,
    @JsonKey(name: 'source') required String? source,
    @JsonKey(name: 'ownership_status') required String? ownership,
    @JsonKey(name: 'reproduction') required String? reproduction,
    @JsonKey(name: 'livestock_images') required List<String>? images,
  }) = _LivestockData;

  factory LivestockData.fromJson(Map<String, dynamic> json) =>
      _$LivestockDataFromJson(json);
}
