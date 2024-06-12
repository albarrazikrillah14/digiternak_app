// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bcs_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BcsRequestImpl _$$BcsRequestImplFromJson(Map<String, dynamic> json) =>
    _$BcsRequestImpl(
      bodyWeight: (json['body_weight'] as num).toInt(),
      chestSize: (json['chest_size'] as num).toInt(),
      hips: (json['hips'] as num).toInt(),
    );

Map<String, dynamic> _$$BcsRequestImplToJson(_$BcsRequestImpl instance) =>
    <String, dynamic>{
      'body_weight': instance.bodyWeight,
      'chest_size': instance.chestSize,
      'hips': instance.hips,
    };
