// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_livestock_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllLivestockResponseImpl _$$AllLivestockResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AllLivestockResponseImpl(
      name: json['name'] as String?,
      code: (json['code'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      error: json['error'] as bool,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => LivestockData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AllLivestockResponseImplToJson(
        _$AllLivestockResponseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'data': instance.data,
    };
