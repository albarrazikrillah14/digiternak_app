// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cages_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CagesResponseImpl _$$CagesResponseImplFromJson(Map<String, dynamic> json) =>
    _$CagesResponseImpl(
      name: json['name'] as String?,
      message: json['message'] as String?,
      code: (json['code'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      error: json['error'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CageResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CagesResponseImplToJson(_$CagesResponseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'message': instance.message,
      'code': instance.code,
      'status': instance.status,
      'error': instance.error,
      'data': instance.data,
    };
