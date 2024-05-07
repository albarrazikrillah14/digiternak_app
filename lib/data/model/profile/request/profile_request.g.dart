// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfilRequestImpl _$$ProfilRequestImplFromJson(Map<String, dynamic> json) =>
    _$ProfilRequestImpl(
      nik: json['nik'] as String,
      fullName: json['full_name'] as String,
      birthdate: json['birthdate'] as String,
      phoneNumber: json['phone_number'] as String,
      gender: (json['gender_id'] as num).toInt(),
      address: json['address'] as String,
    );

Map<String, dynamic> _$$ProfilRequestImplToJson(_$ProfilRequestImpl instance) =>
    <String, dynamic>{
      'nik': instance.nik,
      'full_name': instance.fullName,
      'birthdate': instance.birthdate,
      'phone_number': instance.phoneNumber,
      'gender_id': instance.gender,
      'address': instance.address,
    };
