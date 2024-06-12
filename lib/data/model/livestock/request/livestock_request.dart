import 'package:freezed_annotation/freezed_annotation.dart';

part 'livestock_request.g.dart';
part 'livestock_request.freezed.dart';

@freezed
class LivestockRequest with _$LivestockRequest {
  factory LivestockRequest({
    required String name,
    required String birthdate,
    @JsonKey(name: 'cage_id') required int cageId,
    @JsonKey(name: 'type_of_livestock') required String typeOfLivestock,
    @JsonKey(name: 'breed_of_livestock') required String breedOfLivestock,
    required String purpose,
    @JsonKey(name: 'maintenance') required String maintenance,
    @JsonKey(name: 'source') required String source,
    @JsonKey(name: 'ownership_status') required String ownershipStatus,
    @JsonKey(name: 'reproduction') required String reproduction,
    required String gender,
    required int age,
    @JsonKey(name: 'chest_size') required int chestSize,
    @JsonKey(name: 'body_weight') required int bodyWeight,
    required String health,
  }) = _LivestockRequest;

  factory LivestockRequest.fromJson(Map<String, dynamic> json) =>
      _$LivestockRequestFromJson(json);
}
