// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cage_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CageResultImpl _$$CageResultImplFromJson(Map<String, dynamic> json) =>
    _$CageResultImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      location: json['location'] as String?,
      description: json['description'] as String?,
      livestocks: (json['livestocks'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$CageResultImplToJson(_$CageResultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location': instance.location,
      'description': instance.description,
      'livestocks': instance.livestocks,
    };
