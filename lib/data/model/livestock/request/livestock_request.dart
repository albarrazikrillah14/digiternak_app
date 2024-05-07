import 'package:freezed_annotation/freezed_annotation.dart';

part 'livestock_request.g.dart';
part 'livestock_request.freezed.dart';

@freezed
class LivestockRequest with _$LivestockRequest {
  factory LivestockRequest({
    required String name,
    required String birthdate,
    @JsonKey(name: 'cage_id') required int cageId,
    @JsonKey(name: 'type_of_livestock_id') required int typeOfLivestockId,
    @JsonKey(name: 'breed_of_livestock_id') required int breedOfLivestockId,
    @JsonKey(name: 'maintenance_id') required int maintenanceId,
    @JsonKey(name: 'source_id') required int sourceId,
    @JsonKey(name: 'ownership_status_id') required int ownershipStatusId,
    @JsonKey(name: 'reproduction_id') required int reproductionId,
    required String gender,
    required String age,
    @JsonKey(name: 'chest_size') required int chestSize,
    @JsonKey(name: 'body_weight') required int bodyWeight,
    required String health,
  }) = _LivestockRequest;

  factory LivestockRequest.fromJson(Map<String, dynamic> json) =>
      _$LivestockRequestFromJson(json);
}
