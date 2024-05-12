// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cage_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CageResponseImpl _$$CageResponseImplFromJson(Map<String, dynamic> json) =>
    _$CageResponseImpl(
      name: json['name'] as String?,
      message: json['message'] as String?,
      code: (json['code'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      error: json['error'] as bool?,
      data: json['data'] == null
          ? null
          : CageResult.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CageResponseImplToJson(_$CageResponseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'message': instance.message,
      'code': instance.code,
      'status': instance.status,
      'error': instance.error,
      'data': instance.data,
    };
