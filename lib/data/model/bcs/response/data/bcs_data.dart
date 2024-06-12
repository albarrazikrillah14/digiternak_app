import 'package:freezed_annotation/freezed_annotation.dart';

part 'bcs_data.g.dart';
part 'bcs_data.freezed.dart';

@freezed
class BcsData with _$BcsData {
  factory BcsData({
    required int id,
    @JsonKey(name: 'livestock_id') required int livestockId,
    @JsonKey(name: 'body_weight') required int bodyWeight,
    @JsonKey(name: 'chest_size') required int chestSize,
    required int hips,
    @JsonKey(name: 'bcs_images') required List<String>? images,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _BcsData;

  factory BcsData.fromJson(Map<String, dynamic> json) =>
      _$BcsDataFromJson(json);
}
