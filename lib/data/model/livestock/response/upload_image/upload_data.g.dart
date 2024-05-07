// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UploadDataImpl _$$UploadDataImplFromJson(Map<String, dynamic> json) =>
    _$UploadDataImpl(
      images: (json['livestock_images'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      noteImages: (json['note_images'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$UploadDataImplToJson(_$UploadDataImpl instance) =>
    <String, dynamic>{
      'livestock_images': instance.images,
      'note_images': instance.noteImages,
    };
