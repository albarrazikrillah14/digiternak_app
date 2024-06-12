// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteRequestImpl _$$NoteRequestImplFromJson(Map<String, dynamic> json) =>
    _$NoteRequestImpl(
      feed: json['livestock_feed'] as String,
      feedWeight: (json['feed_weight'] as num).toInt(),
      vitamin: json['vitamin'] as String,
      costs: (json['costs'] as num).toInt(),
      details: json['details'] as String,
    );

Map<String, dynamic> _$$NoteRequestImplToJson(_$NoteRequestImpl instance) =>
    <String, dynamic>{
      'livestock_feed': instance.feed,
      'feed_weight': instance.feedWeight,
      'vitamin': instance.vitamin,
      'costs': instance.costs,
      'details': instance.details,
    };
