// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'livestock_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LivestockDataImpl _$$LivestockDataImplFromJson(Map<String, dynamic> json) =>
    _$LivestockDataImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      eid: json['eid'] as String?,
      vid: json['vid'] as String?,
      name: json['name'] as String?,
      birthdate: json['birthdate'] as String?,
      gender: json['gender'] as String?,
      age: (json['age'] as num?)?.toInt(),
      chestSize: (json['chest_size'] as num?)?.toInt(),
      bodyWeight: (json['body_weight'] as num?)?.toInt(),
      health: json['health'] as String?,
      cage: json['cage'] == null
          ? null
          : Cage.fromJson(json['cage'] as Map<String, dynamic>),
      typeOfLivestock: json['type_of_livestock'] as String?,
      breedOfLivestock: json['breed_of_livestock'] as String?,
      purpose: json['purpose'] as String?,
      typeOfCage: json['maintenance'] as String?,
      source: json['source'] as String?,
      ownership: json['ownership_status'] as String?,
      reproduction: json['reproduction'] as String?,
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
      'purpose': instance.purpose,
      'maintenance': instance.typeOfCage,
      'source': instance.source,
      'ownership_status': instance.ownership,
      'reproduction': instance.reproduction,
      'livestock_images': instance.images,
    };
