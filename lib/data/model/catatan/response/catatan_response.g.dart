// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catatan_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CatatanResponseImpl _$$CatatanResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CatatanResponseImpl(
      name: json['name'] as String?,
      message: json['message'] as String?,
      code: (json['code'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      error: json['error'] as bool?,
      data: json['data'] == null
          ? null
          : CatatanData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CatatanResponseImplToJson(
        _$CatatanResponseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'message': instance.message,
      'code': instance.code,
      'status': instance.status,
      'error': instance.error,
      'data': instance.data,
    };
