// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bcs_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BcsDataImpl _$$BcsDataImplFromJson(Map<String, dynamic> json) =>
    _$BcsDataImpl(
      id: (json['id'] as num).toInt(),
      livestockId: (json['livestock_id'] as num).toInt(),
      bodyWeight: (json['body_weight'] as num).toInt(),
      chestSize: (json['chest_size'] as num).toInt(),
      hips: (json['hips'] as num).toInt(),
      images: (json['bcs_images'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$$BcsDataImplToJson(_$BcsDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'livestock_id': instance.livestockId,
      'body_weight': instance.bodyWeight,
      'chest_size': instance.chestSize,
      'hips': instance.hips,
      'bcs_images': instance.images,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
