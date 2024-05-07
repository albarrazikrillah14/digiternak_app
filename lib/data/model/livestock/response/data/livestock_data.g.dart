// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'livestock_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LivestockDataImpl _$$LivestockDataImplFromJson(Map<String, dynamic> json) =>
    _$LivestockDataImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      eid: json['eid'] as String?,
      vid: json['vid'] as String?,
      name: json['name'] as String,
      birthdate: json['birthdate'] as String,
      gender: json['gender'] as String,
      age: json['age'] as String,
      chestSize: json['chest_size'] as String,
      bodyWeight: json['body_weight'] as String,
      health: json['health'] as String,
      cage: Cage.fromJson(json['cage'] as Map<String, dynamic>),
      typeOfLivestock: TypeOfLivestock.fromJson(
          json['type_of_livestock'] as Map<String, dynamic>),
      breedOfLivestock:
          Breed.fromJson(json['breed_of_livestock'] as Map<String, dynamic>),
      typeOfCage:
          Maintenance.fromJson(json['maintenance'] as Map<String, dynamic>),
      source: Source.fromJson(json['source'] as Map<String, dynamic>),
      ownership:
          Ownership.fromJson(json['ownership_status'] as Map<String, dynamic>),
      reproduction:
          Reproduction.fromJson(json['reproduction'] as Map<String, dynamic>),
      images: (json['livestock_images'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$LivestockDataImplToJson(_$LivestockDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'eid': instance.eid,
      'vid': instance.vid,
      'name': instance.name,
      'birthdate': instance.birthdate,
      'gender': instance.gender,
      'age': instance.age,
      'chest_size': instance.chestSize,
      'body_weight': instance.bodyWeight,
      'health': instance.health,
      'cage': instance.cage,
      'type_of_livestock': instance.typeOfLivestock,
      'breed_of_livestock': instance.breedOfLivestock,
      'maintenance': instance.typeOfCage,
      'source': instance.source,
      'ownership_status': instance.ownership,
      'reproduction': instance.reproduction,
      'livestock_images': instance.images,
    };
