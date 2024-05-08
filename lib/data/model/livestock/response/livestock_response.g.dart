// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'livestock_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LivestockResponseImpl _$$LivestockResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LivestockResponseImpl(
      name: json['name'] as String?,
      message: json['message'] as String?,
      code: (json['code'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      error: json['error'] as bool,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => LivestockData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LivestockResponseImplToJson(
        _$LivestockResponseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'message': instance.message,
      'code': instance.code,
      'status': instance.status,
      'error': instance.error,
      'data': instance.data,
    };
