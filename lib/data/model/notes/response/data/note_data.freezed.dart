// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NoteData _$NoteDataFromJson(Map<String, dynamic> json) {
  return _NoteData.fromJson(json);
}

/// @nodoc
mixin _$NoteData {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'livestock_id')
  int? get livestockId => throw _privateConstructorUsedError;
  @JsonKey(name: 'livestock_vid')
  String? get livestockVID => throw _privateConstructorUsedError;
  @JsonKey(name: 'livestock_name')
  String? get livestockName => throw _privateConstructorUsedError;
  @JsonKey(name: 'livestock_cage')
  String? get livestockCage => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_recorded')
  String? get dateRecorded => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'livestock_feed')
  String? get livestockFeed => throw _privateConstructorUsedError;
  int? get costs => throw _privateConstructorUsedError;
  String? get details => throw _privateConstructorUsedError;
  @JsonKey(name: 'note_images')
  List<String>? get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteDataCopyWith<NoteData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteDataCopyWith<$Res> {
  factory $NoteDataCopyWith(NoteData value, $Res Function(NoteData) then) =
      _$NoteDataCopyWithImpl<$Res, NoteData>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'livestock_id') int? livestockId,
      @JsonKey(name: 'livestock_vid') String? livestockVID,
      @JsonKey(name: 'livestock_name') String? livestockName,
      @JsonKey(name: 'livestock_cage') String? livestockCage,
      @JsonKey(name: 'date_recorded') String? dateRecorded,
      String? location,
      @JsonKey(name: 'livestock_feed') String? livestockFeed,
      int? costs,
      String? details,
      @JsonKey(name: 'note_images') List<String>? images});
}

/// @nodoc
class _$NoteDataCopyWithImpl<$Res, $Val extends NoteData>
    implements $NoteDataCopyWith<$Res> {
  _$NoteDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? livestockId = freezed,
    Object? livestockVID = freezed,
    Object? livestockName = freezed,
    Object? livestockCage = freezed,
    Object? dateRecorded = freezed,
    Object? location = freezed,
    Object? livestockFeed = freezed,
    Object? costs = freezed,
    Object? details = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      livestockId: freezed == livestockId
          ? _value.livestockId
          : livestockId // ignore: cast_nullable_to_non_nullable
              as int?,
      livestockVID: freezed == livestockVID
          ? _value.livestockVID
          : livestockVID // ignore: cast_nullable_to_non_nullable
              as String?,
      livestockName: freezed == livestockName
          ? _value.livestockName
          : livestockName // ignore: cast_nullable_to_non_nullable
              as String?,
      livestockCage: freezed == livestockCage
          ? _value.livestockCage
          : livestockCage // ignore: cast_nullable_to_non_nullable
              as String?,
      dateRecorded: freezed == dateRecorded
          ? _value.dateRecorded
          : dateRecorded // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      livestockFeed: freezed == livestockFeed
          ? _value.livestockFeed
          : livestockFeed // ignore: cast_nullable_to_non_nullable
              as String?,
      costs: freezed == costs
          ? _value.costs
          : costs // ignore: cast_nullable_to_non_nullable
              as int?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteDataImplCopyWith<$Res>
    implements $NoteDataCopyWith<$Res> {
  factory _$$NoteDataImplCopyWith(
          _$NoteDataImpl value, $Res Function(_$NoteDataImpl) then) =
      __$$NoteDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'livestock_id') int? livestockId,
      @JsonKey(name: 'livestock_vid') String? livestockVID,
      @JsonKey(name: 'livestock_name') String? livestockName,
      @JsonKey(name: 'livestock_cage') String? livestockCage,
      @JsonKey(name: 'date_recorded') String? dateRecorded,
      String? location,
      @JsonKey(name: 'livestock_feed') String? livestockFeed,
      int? costs,
      String? details,
      @JsonKey(name: 'note_images') List<String>? images});
}

/// @nodoc
class __$$NoteDataImplCopyWithImpl<$Res>
    extends _$NoteDataCopyWithImpl<$Res, _$NoteDataImpl>
    implements _$$NoteDataImplCopyWith<$Res> {
  __$$NoteDataImplCopyWithImpl(
      _$NoteDataImpl _value, $Res Function(_$NoteDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? livestockId = freezed,
    Object? livestockVID = freezed,
    Object? livestockName = freezed,
    Object? livestockCage = freezed,
    Object? dateRecorded = freezed,
    Object? location = freezed,
    Object? livestockFeed = freezed,
    Object? costs = freezed,
    Object? details = freezed,
    Object? images = freezed,
  }) {
    return _then(_$NoteDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      livestockId: freezed == livestockId
          ? _value.livestockId
          : livestockId // ignore: cast_nullable_to_non_nullable
              as int?,
      livestockVID: freezed == livestockVID
          ? _value.livestockVID
          : livestockVID // ignore: cast_nullable_to_non_nullable
              as String?,
      livestockName: freezed == livestockName
          ? _value.livestockName
          : livestockName // ignore: cast_nullable_to_non_nullable
              as String?,
      livestockCage: freezed == livestockCage
          ? _value.livestockCage
          : livestockCage // ignore: cast_nullable_to_non_nullable
              as String?,
      dateRecorded: freezed == dateRecorded
          ? _value.dateRecorded
          : dateRecorded // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      livestockFeed: freezed == livestockFeed
          ? _value.livestockFeed
          : livestockFeed // ignore: cast_nullable_to_non_nullable
              as String?,
      costs: freezed == costs
          ? _value.costs
          : costs // ignore: cast_nullable_to_non_nullable
              as int?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoteDataImpl implements _NoteData {
  _$NoteDataImpl(
      {required this.id,
      @JsonKey(name: 'livestock_id') required this.livestockId,
      @JsonKey(name: 'livestock_vid') required this.livestockVID,
      @JsonKey(name: 'livestock_name') required this.livestockName,
      @JsonKey(name: 'livestock_cage') required this.livestockCage,
      @JsonKey(name: 'date_recorded') required this.dateRecorded,
      required this.location,
      @JsonKey(name: 'livestock_feed') required this.livestockFeed,
      required this.costs,
      required this.details,
      @JsonKey(name: 'note_images') final List<String>? images})
      : _images = images;

  factory _$NoteDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoteDataImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'livestock_id')
  final int? livestockId;
  @override
  @JsonKey(name: 'livestock_vid')
  final String? livestockVID;
  @override
  @JsonKey(name: 'livestock_name')
  final String? livestockName;
  @override
  @JsonKey(name: 'livestock_cage')
  final String? livestockCage;
  @override
  @JsonKey(name: 'date_recorded')
  final String? dateRecorded;
  @override
  final String? location;
  @override
  @JsonKey(name: 'livestock_feed')
  final String? livestockFeed;
  @override
  final int? costs;
  @override
  final String? details;
  final List<String>? _images;
  @override
  @JsonKey(name: 'note_images')
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NoteData(id: $id, livestockId: $livestockId, livestockVID: $livestockVID, livestockName: $livestockName, livestockCage: $livestockCage, dateRecorded: $dateRecorded, location: $location, livestockFeed: $livestockFeed, costs: $costs, details: $details, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.livestockId, livestockId) ||
                other.livestockId == livestockId) &&
            (identical(other.livestockVID, livestockVID) ||
                other.livestockVID == livestockVID) &&
            (identical(other.livestockName, livestockName) ||
                other.livestockName == livestockName) &&
            (identical(other.livestockCage, livestockCage) ||
                other.livestockCage == livestockCage) &&
            (identical(other.dateRecorded, dateRecorded) ||
                other.dateRecorded == dateRecorded) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.livestockFeed, livestockFeed) ||
                other.livestockFeed == livestockFeed) &&
            (identical(other.costs, costs) || other.costs == costs) &&
            (identical(other.details, details) || other.details == details) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      livestockId,
      livestockVID,
      livestockName,
      livestockCage,
      dateRecorded,
      location,
      livestockFeed,
      costs,
      details,
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteDataImplCopyWith<_$NoteDataImpl> get copyWith =>
      __$$NoteDataImplCopyWithImpl<_$NoteDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoteDataImplToJson(
      this,
    );
  }
}

abstract class _NoteData implements NoteData {
  factory _NoteData(
          {required final int? id,
          @JsonKey(name: 'livestock_id') required final int? livestockId,
          @JsonKey(name: 'livestock_vid') required final String? livestockVID,
          @JsonKey(name: 'livestock_name') required final String? livestockName,
          @JsonKey(name: 'livestock_cage') required final String? livestockCage,
          @JsonKey(name: 'date_recorded') required final String? dateRecorded,
          required final String? location,
          @JsonKey(name: 'livestock_feed') required final String? livestockFeed,
          required final int? costs,
          required final String? details,
          @JsonKey(name: 'note_images') final List<String>? images}) =
      _$NoteDataImpl;

  factory _NoteData.fromJson(Map<String, dynamic> json) =
      _$NoteDataImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'livestock_id')
  int? get livestockId;
  @override
  @JsonKey(name: 'livestock_vid')
  String? get livestockVID;
  @override
  @JsonKey(name: 'livestock_name')
  String? get livestockName;
  @override
  @JsonKey(name: 'livestock_cage')
  String? get livestockCage;
  @override
  @JsonKey(name: 'date_recorded')
  String? get dateRecorded;
  @override
  String? get location;
  @override
  @JsonKey(name: 'livestock_feed')
  String? get livestockFeed;
  @override
  int? get costs;
  @override
  String? get details;
  @override
  @JsonKey(name: 'note_images')
  List<String>? get images;
  @override
  @JsonKey(ignore: true)
  _$$NoteDataImplCopyWith<_$NoteDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
