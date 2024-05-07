// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catatan_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CatatanData _$CatatanDataFromJson(Map<String, dynamic> json) {
  return _CatatanData.fromJson(json);
}

/// @nodoc
mixin _$CatatanData {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'livestock_vid')
  String get livestockVID => throw _privateConstructorUsedError;
  @JsonKey(name: 'livestock_cage')
  String get livestockCage => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_recorded')
  String get dateRecorded => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'livestock_feed')
  String get livestockFeed => throw _privateConstructorUsedError;
  int get costs => throw _privateConstructorUsedError;
  String get details => throw _privateConstructorUsedError;
  @JsonKey(name: 'note_images')
  List<String>? get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatatanDataCopyWith<CatatanData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatatanDataCopyWith<$Res> {
  factory $CatatanDataCopyWith(
          CatatanData value, $Res Function(CatatanData) then) =
      _$CatatanDataCopyWithImpl<$Res, CatatanData>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'livestock_vid') String livestockVID,
      @JsonKey(name: 'livestock_cage') String livestockCage,
      @JsonKey(name: 'date_recorded') String dateRecorded,
      String location,
      @JsonKey(name: 'livestock_feed') String livestockFeed,
      int costs,
      String details,
      @JsonKey(name: 'note_images') List<String>? images});
}

/// @nodoc
class _$CatatanDataCopyWithImpl<$Res, $Val extends CatatanData>
    implements $CatatanDataCopyWith<$Res> {
  _$CatatanDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? livestockVID = null,
    Object? livestockCage = null,
    Object? dateRecorded = null,
    Object? location = null,
    Object? livestockFeed = null,
    Object? costs = null,
    Object? details = null,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      livestockVID: null == livestockVID
          ? _value.livestockVID
          : livestockVID // ignore: cast_nullable_to_non_nullable
              as String,
      livestockCage: null == livestockCage
          ? _value.livestockCage
          : livestockCage // ignore: cast_nullable_to_non_nullable
              as String,
      dateRecorded: null == dateRecorded
          ? _value.dateRecorded
          : dateRecorded // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      livestockFeed: null == livestockFeed
          ? _value.livestockFeed
          : livestockFeed // ignore: cast_nullable_to_non_nullable
              as String,
      costs: null == costs
          ? _value.costs
          : costs // ignore: cast_nullable_to_non_nullable
              as int,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CatatanDataImplCopyWith<$Res>
    implements $CatatanDataCopyWith<$Res> {
  factory _$$CatatanDataImplCopyWith(
          _$CatatanDataImpl value, $Res Function(_$CatatanDataImpl) then) =
      __$$CatatanDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'livestock_vid') String livestockVID,
      @JsonKey(name: 'livestock_cage') String livestockCage,
      @JsonKey(name: 'date_recorded') String dateRecorded,
      String location,
      @JsonKey(name: 'livestock_feed') String livestockFeed,
      int costs,
      String details,
      @JsonKey(name: 'note_images') List<String>? images});
}

/// @nodoc
class __$$CatatanDataImplCopyWithImpl<$Res>
    extends _$CatatanDataCopyWithImpl<$Res, _$CatatanDataImpl>
    implements _$$CatatanDataImplCopyWith<$Res> {
  __$$CatatanDataImplCopyWithImpl(
      _$CatatanDataImpl _value, $Res Function(_$CatatanDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? livestockVID = null,
    Object? livestockCage = null,
    Object? dateRecorded = null,
    Object? location = null,
    Object? livestockFeed = null,
    Object? costs = null,
    Object? details = null,
    Object? images = freezed,
  }) {
    return _then(_$CatatanDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      livestockVID: null == livestockVID
          ? _value.livestockVID
          : livestockVID // ignore: cast_nullable_to_non_nullable
              as String,
      livestockCage: null == livestockCage
          ? _value.livestockCage
          : livestockCage // ignore: cast_nullable_to_non_nullable
              as String,
      dateRecorded: null == dateRecorded
          ? _value.dateRecorded
          : dateRecorded // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      livestockFeed: null == livestockFeed
          ? _value.livestockFeed
          : livestockFeed // ignore: cast_nullable_to_non_nullable
              as String,
      costs: null == costs
          ? _value.costs
          : costs // ignore: cast_nullable_to_non_nullable
              as int,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CatatanDataImpl implements _CatatanData {
  _$CatatanDataImpl(
      {required this.id,
      @JsonKey(name: 'livestock_vid') required this.livestockVID,
      @JsonKey(name: 'livestock_cage') required this.livestockCage,
      @JsonKey(name: 'date_recorded') required this.dateRecorded,
      required this.location,
      @JsonKey(name: 'livestock_feed') required this.livestockFeed,
      required this.costs,
      required this.details,
      @JsonKey(name: 'note_images') final List<String>? images})
      : _images = images;

  factory _$CatatanDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatatanDataImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'livestock_vid')
  final String livestockVID;
  @override
  @JsonKey(name: 'livestock_cage')
  final String livestockCage;
  @override
  @JsonKey(name: 'date_recorded')
  final String dateRecorded;
  @override
  final String location;
  @override
  @JsonKey(name: 'livestock_feed')
  final String livestockFeed;
  @override
  final int costs;
  @override
  final String details;
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
    return 'CatatanData(id: $id, livestockVID: $livestockVID, livestockCage: $livestockCage, dateRecorded: $dateRecorded, location: $location, livestockFeed: $livestockFeed, costs: $costs, details: $details, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatatanDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.livestockVID, livestockVID) ||
                other.livestockVID == livestockVID) &&
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
      livestockVID,
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
  _$$CatatanDataImplCopyWith<_$CatatanDataImpl> get copyWith =>
      __$$CatatanDataImplCopyWithImpl<_$CatatanDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CatatanDataImplToJson(
      this,
    );
  }
}

abstract class _CatatanData implements CatatanData {
  factory _CatatanData(
          {required final int id,
          @JsonKey(name: 'livestock_vid') required final String livestockVID,
          @JsonKey(name: 'livestock_cage') required final String livestockCage,
          @JsonKey(name: 'date_recorded') required final String dateRecorded,
          required final String location,
          @JsonKey(name: 'livestock_feed') required final String livestockFeed,
          required final int costs,
          required final String details,
          @JsonKey(name: 'note_images') final List<String>? images}) =
      _$CatatanDataImpl;

  factory _CatatanData.fromJson(Map<String, dynamic> json) =
      _$CatatanDataImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'livestock_vid')
  String get livestockVID;
  @override
  @JsonKey(name: 'livestock_cage')
  String get livestockCage;
  @override
  @JsonKey(name: 'date_recorded')
  String get dateRecorded;
  @override
  String get location;
  @override
  @JsonKey(name: 'livestock_feed')
  String get livestockFeed;
  @override
  int get costs;
  @override
  String get details;
  @override
  @JsonKey(name: 'note_images')
  List<String>? get images;
  @override
  @JsonKey(ignore: true)
  _$$CatatanDataImplCopyWith<_$CatatanDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
