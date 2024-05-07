// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catatan_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CatatanRequestImpl _$$CatatanRequestImplFromJson(Map<String, dynamic> json) =>
    _$CatatanRequestImpl(
      feed: json['livestock_feed'] as String,
      costs: (json['costs'] as num).toInt(),
      details: json['details'] as String,
    );

Map<String, dynamic> _$$CatatanRequestImplToJson(
        _$CatatanRequestImpl instance) =>
    <String, dynamic>{
      'livestock_feed': instance.feed,
      'costs': instance.costs,
      'details': instance.details,
    };
