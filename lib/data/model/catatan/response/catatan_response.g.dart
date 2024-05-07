// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catatan_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CatatanResponseImpl _$$CatatanResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CatatanResponseImpl(
      message: json['message'] as String,
      error: json['error'] as bool,
      data: CatatanData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CatatanResponseImplToJson(
        _$CatatanResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'error': instance.error,
      'data': instance.data,
    };
