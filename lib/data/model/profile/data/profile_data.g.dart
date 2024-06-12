// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileDataImpl _$$ProfileDataImplFromJson(Map<String, dynamic> json) =>
    _$ProfileDataImpl(
      id: (json['id'] as num?)?.toInt(),
      username: json['username'] as String?,
      email: json['email'] as String?,
      gender: json['gender'] as String?,
      nik: json['nik'] as String?,
      fullName: json['full_name'] as String?,
      birthdate: json['birthdate'] as String?,
      phoneNumber: json['phone_number'] as String?,
      address: json['address'] as String?,
      isCompleted: json['is_completed'] as bool?,
      role: json['role'] == null
          ? null
          : RegisterRole.fromJson(json['role'] as Map<String, dynamic>),
      isVerified: json['is_verified'] as bool?,
    );

Map<String, dynamic> _$$ProfileDataImplToJson(_$ProfileDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'gender': instance.gender,
      'nik': instance.nik,
      'full_name': instance.fullName,
      'birthdate': instance.birthdate,
      'phone_number': instance.phoneNumber,
      'address': instance.address,
      'is_completed': instance.isCompleted,
      'role': instance.role,
      'is_verified': instance.isVerified,
    };
