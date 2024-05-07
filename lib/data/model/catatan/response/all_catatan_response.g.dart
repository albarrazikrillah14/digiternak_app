// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_catatan_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllCatatanResponseImpl _$$AllCatatanResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AllCatatanResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => CatatanData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AllCatatanResponseImplToJson(
        _$AllCatatanResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
