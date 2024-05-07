// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'livestock_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LivestockResponseImpl _$$LivestockResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LivestockResponseImpl(
      message: json['message'] as String,
      error: json['error'] as bool,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => LivestockData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LivestockResponseImplToJson(
        _$LivestockResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'error': instance.error,
      'data': instance.data,
    };
