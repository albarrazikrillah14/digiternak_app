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
      typeOfLivestock: json['type_of_livestock'] as String,
      breedOfLivestock: json['breed_of_livestock'] as String,
      purpose: json['purpose'] as String,
      maintenance: json['maintenance'] as String,
      source: json['source'] as String,
      ownershipStatus: json['ownership_status'] as String,
      reproduction: json['reproduction'] as String,
      gender: json['gender'] as String,
      age: (json['age'] as num).toInt(),
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
      'type_of_livestock': instance.typeOfLivestock,
      'breed_of_livestock': instance.breedOfLivestock,
      'purpose': instance.purpose,
      'maintenance': instance.maintenance,
      'source': instance.source,
      'ownership_status': instance.ownershipStatus,
      'reproduction': instance.reproduction,
      'gender': instance.gender,
      'age': instance.age,
      'chest_size': instance.chestSize,
      'body_weight': instance.bodyWeight,
      'health': instance.health,
    };
