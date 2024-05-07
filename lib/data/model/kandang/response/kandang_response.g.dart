// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kandang_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KandangResponseImpl _$$KandangResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$KandangResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => KandangResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$KandangResponseImplToJson(
        _$KandangResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
