// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_livestock_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateLivestockResponseImpl _$$CreateLivestockResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateLivestockResponseImpl(
      name: json['name'] as String?,
      code: (json['code'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      error: json['error'] as bool,
      data: json['data'] == null
          ? null
          : LivestockData.fromJson(json['data'] as Map<String, dynamic>),
      details:
          (json['details'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$CreateLivestockResponseImplToJson(
        _$CreateLivestockResponseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'data': instance.data,
      'details': instance.details,
    };
