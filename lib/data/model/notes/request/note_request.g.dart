// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteRequestImpl _$$NoteRequestImplFromJson(Map<String, dynamic> json) =>
    _$NoteRequestImpl(
      feed: json['livestock_feed'] as String,
      costs: (json['costs'] as num).toInt(),
      details: json['details'] as String,
    );

Map<String, dynamic> _$$NoteRequestImplToJson(_$NoteRequestImpl instance) =>
    <String, dynamic>{
      'livestock_feed': instance.feed,
      'costs': instance.costs,
      'details': instance.details,
    };
