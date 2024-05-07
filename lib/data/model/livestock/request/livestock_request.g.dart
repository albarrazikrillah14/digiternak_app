// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'livestock_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LivestockRequestImpl _$$LivestockRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$LivestockRequestImpl(
      name: json['name'] as String,
      birthdate: json['birthdate'] as String,
      cageId: (json['cage_id'] as num).toInt(),
      typeOfLivestockId: (json['type_of_livestock_id'] as num).toInt(),
      breedOfLivestockId: (json['breed_of_livestock_id'] as num).toInt(),
      maintenanceId: (json['maintenance_id'] as num).toInt(),
      sourceId: (json['source_id'] as num).toInt(),
      ownershipStatusId: (json['ownership_status_id'] as num).toInt(),
      reproductionId: (json['reproduction_id'] as num).toInt(),
      gender: json['gender'] as String,
      age: json['age'] as String,
      chestSize: (json['chest_size'] as num).toInt(),
      bodyWeight: (json['body_weight'] as num).toInt(),
      health: json['health'] as String,
    );

Map<String, dynamic> _$$LivestockRequestImplToJson(
        _$LivestockRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'birthdate': instance.birthdate,
      'cage_id': instance.cageId,
      'type_of_livestock_id': instance.typeOfLivestockId,
      'breed_of_livestock_id': instance.breedOfLivestockId,
      'maintenance_id': instance.maintenanceId,
      'source_id': instance.sourceId,
      'ownership_status_id': instance.ownershipStatusId,
      'reproduction_id': instance.reproductionId,
      'gender': instance.gender,
      'age': instance.age,
      'chest_size': instance.chestSize,
      'body_weight': instance.bodyWeight,
      'health': instance.health,
    };
