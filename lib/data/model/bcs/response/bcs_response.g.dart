// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bcs_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BcsResponseImpl _$$BcsResponseImplFromJson(Map<String, dynamic> json) =>
    _$BcsResponseImpl(
      name: json['name'] as String?,
      code: (json['code'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      error: json['error'] as bool,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => BcsData.fromJson(e as Map<String, dynamic>))
          .toList(),
      details:
          (json['details'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$BcsResponseImplToJson(_$BcsResponseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'data': instance.data,
      'details': instance.details,
    };
