// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'livestock_upload_image_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LivestockUploadImageResponseImpl _$$LivestockUploadImageResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LivestockUploadImageResponseImpl(
      name: json['name'] as String?,
      code: (json['code'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      error: json['error'] as bool?,
      data: json['data'] == null
          ? null
          : UploadData.fromJson(json['data'] as Map<String, dynamic>),
      details:
          (json['details'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$LivestockUploadImageResponseImplToJson(
        _$LivestockUploadImageResponseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'data': instance.data,
      'details': instance.details,
    };
