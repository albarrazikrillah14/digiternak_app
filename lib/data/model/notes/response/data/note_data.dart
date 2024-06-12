import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_data.g.dart';
part 'note_data.freezed.dart';

@freezed
class NoteData with _$NoteData {
  factory NoteData({
    required int? id,
    @JsonKey(name: 'livestock_id') required int? livestockId,
    @JsonKey(name: 'livestock_vid') required String? livestockVID,
    @JsonKey(name: 'livestock_name') required String? livestockName,
    @JsonKey(name: 'livestock_cage') required String? livestockCage,
    required String? location,
    @JsonKey(name: 'livestock_feed') required String? livestockFeed,
    @JsonKey(name: 'feed_weight') required int? feedWeight,
    required String? vitamin,
    required int? costs,
    required String? details,
    @JsonKey(name: 'note_images') List<String>? images,
    @JsonKey(name: 'created_at') required String? createdAt,
    @JsonKey(name: 'updated_at') required String? updatedAt,
  }) = _NoteData;

  factory NoteData.fromJson(Map<String, dynamic> json) =>
      _$NoteDataFromJson(json);
}
