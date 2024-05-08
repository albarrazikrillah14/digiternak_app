// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditProfileResponseImpl _$$EditProfileResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$EditProfileResponseImpl(
      name: json['name'] as String?,
      message: json['message'] as String?,
      code: (json['code'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      error: json['error'] as bool?,
      data: json['data'] == null
          ? null
          : ProfileResponse.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EditProfileResponseImplToJson(
        _$EditProfileResponseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'message': instance.message,
      'code': instance.code,
      'status': instance.status,
      'error': instance.error,
      'data': instance.data,
    };
