// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_kandang_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetKandangResponseImpl _$$GetKandangResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetKandangResponseImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      location: json['location'] as String,
    );

Map<String, dynamic> _$$GetKandangResponseImplToJson(
        _$GetKandangResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location': instance.location,
    };
