// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'livestock_upload_image_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LivestockUploadImageResponseImpl _$$LivestockUploadImageResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LivestockUploadImageResponseImpl(
      message: json['message'] as String,
      error: json['error'] as bool,
      data: UploadData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LivestockUploadImageResponseImplToJson(
        _$LivestockUploadImageResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'error': instance.error,
      'data': instance.data,
    };
