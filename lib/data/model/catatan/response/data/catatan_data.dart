import 'package:freezed_annotation/freezed_annotation.dart';

part 'catatan_data.g.dart';
part 'catatan_data.freezed.dart';

@freezed
class CatatanData with _$CatatanData {
  factory CatatanData({
    required int id,
    @JsonKey(name: 'livestock_vid') required String livestockVID,
    @JsonKey(name: 'livestock_cage') required String livestockCage,
    @JsonKey(name: 'date_recorded') required String dateRecorded,
    required String location,
    @JsonKey(name: 'livestock_feed') required String livestockFeed,
    required int costs,
    required String details,
    @JsonKey(name: 'note_images') List<String>? images,
  }) = _CatatanData;

  factory CatatanData.fromJson(Map<String, dynamic> json) =>
      _$CatatanDataFromJson(json);
}
