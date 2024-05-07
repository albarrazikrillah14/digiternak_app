// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_livestock_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllLivestockResponseImpl _$$AllLivestockResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AllLivestockResponseImpl(
      message: json['message'] as String,
      error: json['error'] as bool,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => LivestockData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AllLivestockResponseImplToJson(
        _$AllLivestockResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'error': instance.error,
      'data': instance.data,
    };
