import 'package:digiternak_app/data/model/livestock/response/breed/breed.dart';
import 'package:digiternak_app/data/model/livestock/response/cage/cage.dart';
import 'package:digiternak_app/data/model/livestock/response/maintenance/maintenance.dart';
import 'package:digiternak_app/data/model/livestock/response/ownership/ownership.dart';
import 'package:digiternak_app/data/model/livestock/response/reproduction/reproduction.dart';
import 'package:digiternak_app/data/model/livestock/response/source/source.dart';
import 'package:digiternak_app/data/model/livestock/response/type_of_livestock/type_of_livestock.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'livestock_data.g.dart';
part 'livestock_data.freezed.dart';

@freezed
class LivestockData with _$LivestockData {
  factory LivestockData({
    required int id,
    @JsonKey(name: 'user_id') required int userId,
    required String? eid,
    required String? vid,
    required String name,
    required String birthdate,
    required String gender,
    required String age,
    @JsonKey(name: 'chest_size') required String chestSize,
    @JsonKey(name: 'body_weight') required String bodyWeight,
    required String health,
    required Cage cage,
    @JsonKey(name: 'type_of_livestock')
    required TypeOfLivestock typeOfLivestock,
    @JsonKey(name: 'breed_of_livestock') required Breed breedOfLivestock,
    @JsonKey(name: 'maintenance') required Maintenance typeOfCage,
    @JsonKey(name: 'source') required Source source,
    @JsonKey(name: 'ownership_status') required Ownership ownership,
    @JsonKey(name: 'reproduction') required Reproduction reproduction,
    @JsonKey(name: 'livestock_images') required List<String>? images,
  }) = _LivestockData;

  factory LivestockData.fromJson(Map<String, dynamic> json) =>
      _$LivestockDataFromJson(json);
}
