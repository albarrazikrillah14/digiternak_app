// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileResponseImpl _$$ProfileResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileResponseImpl(
      name: json['name'] as String?,
      message: json['message'] as String?,
      code: (json['code'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      username: json['username'] as String?,
      email: json['email'] as String?,
      gender: (json['gender_id'] as num?)?.toInt(),
      nik: json['nik'] as String?,
      fullName: json['full_name'] as String?,
      birthdate: json['birthdate'] as String?,
      phoneNumber: json['phone_number'] as String?,
      address: json['address'] as String?,
      isCompleted: json['is_completed'] as bool?,
      role: json['role'] == null
          ? null
          : RegisterRole.fromJson(json['role'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProfileResponseImplToJson(
        _$ProfileResponseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'message': instance.message,
      'code': instance.code,
      'status': instance.status,
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'gender_id': instance.gender,
      'nik': instance.nik,
      'full_name': instance.fullName,
      'birthdate': instance.birthdate,
      'phone_number': instance.phoneNumber,
      'address': instance.address,
      'is_completed': instance.isCompleted,
      'role': instance.role,
    };
