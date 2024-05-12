// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteDataImpl _$$NoteDataImplFromJson(Map<String, dynamic> json) =>
    _$NoteDataImpl(
      id: (json['id'] as num?)?.toInt(),
      livestockId: (json['livestock_id'] as num?)?.toInt(),
      livestockVID: json['livestock_vid'] as String?,
      livestockName: json['livestock_name'] as String?,
      livestockCage: json['livestock_cage'] as String?,
      dateRecorded: json['date_recorded'] as String?,
      location: json['location'] as String?,
      livestockFeed: json['livestock_feed'] as String?,
      costs: (json['costs'] as num?)?.toInt(),
      details: json['details'] as String?,
      images: (json['note_images'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$NoteDataImplToJson(_$NoteDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'livestock_id': instance.livestockId,
      'livestock_vid': instance.livestockVID,
      'livestock_name': instance.livestockName,
      'livestock_cage': instance.livestockCage,
      'date_recorded': instance.dateRecorded,
      'location': instance.location,
      'livestock_feed': instance.livestockFeed,
      'costs': instance.costs,
      'details': instance.details,
      'note_images': instance.images,
    };
