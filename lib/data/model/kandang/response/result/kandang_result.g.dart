// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kandang_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KandangResultImpl _$$KandangResultImplFromJson(Map<String, dynamic> json) =>
    _$KandangResultImpl(
      name: json['name'] as String?,
      message: json['message'] as String?,
      code: (json['code'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      location: json['location'] as String?,
      description: json['description'] as String?,
      livestocks: (json['livestocks'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$KandangResultImplToJson(_$KandangResultImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'message': instance.message,
      'code': instance.code,
      'status': instance.status,
      'id': instance.id,
      'location': instance.location,
      'description': instance.description,
      'livestocks': instance.livestocks,
    };
