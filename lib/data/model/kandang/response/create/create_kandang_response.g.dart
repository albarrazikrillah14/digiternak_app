// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_kandang_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateKandangResponseImpl _$$CreateKandangResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateKandangResponseImpl(
      name: json['name'] as String?,
      message: json['message'] as String?,
      code: (json['code'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      error: json['error'] as bool,
    );

Map<String, dynamic> _$$CreateKandangResponseImplToJson(
        _$CreateKandangResponseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'message': instance.message,
      'code': instance.code,
      'status': instance.status,
      'error': instance.error,
    };
