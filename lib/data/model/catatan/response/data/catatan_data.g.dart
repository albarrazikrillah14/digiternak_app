// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catatan_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CatatanDataImpl _$$CatatanDataImplFromJson(Map<String, dynamic> json) =>
    _$CatatanDataImpl(
      name: json['name'] as String?,
      message: json['message'] as String?,
      code: (json['code'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      livestockVID: json['livestock_vid'] as String?,
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

Map<String, dynamic> _$$CatatanDataImplToJson(_$CatatanDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'message': instance.message,
      'code': instance.code,
      'status': instance.status,
      'id': instance.id,
      'livestock_vid': instance.livestockVID,
      'livestock_cage': instance.livestockCage,
      'date_recorded': instance.dateRecorded,
      'location': instance.location,
      'livestock_feed': instance.livestockFeed,
      'costs': instance.costs,
      'details': instance.details,
      'note_images': instance.images,
    };
