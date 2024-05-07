// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_livestock_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateLivestockResponseImpl _$$CreateLivestockResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateLivestockResponseImpl(
      message: json['message'] as String,
      error: json['error'] as bool,
      data: LivestockData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateLivestockResponseImplToJson(
        _$CreateLivestockResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'error': instance.error,
      'data': instance.data,
    };
