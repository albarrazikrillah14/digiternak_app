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
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'livestock_feed')
  String? get livestockFeed => throw _privateConstructorUsedError;
  @JsonKey(name: 'feed_weight')
  int? get feedWeight => throw _privateConstructorUsedError;
  String? get vitamin => throw _privateConstructorUsedError;
  int? get costs => throw _privateConstructorUsedError;
  String? get details => throw _privateConstructorUsedError;
  @JsonKey(name: 'note_images')
  List<String>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

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
      String? location,
      @JsonKey(name: 'livestock_feed') String? livestockFeed,
      @JsonKey(name: 'feed_weight') int? feedWeight,
      String? vitamin,
      int? costs,
      String? details,
      @JsonKey(name: 'note_images') List<String>? images,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
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
    Object? location = freezed,
    Object? livestockFeed = freezed,
    Object? feedWeight = freezed,
    Object? vitamin = freezed,
    Object? costs = freezed,
    Object? details = freezed,
    Object? images = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      livestockFeed: freezed == livestockFeed
          ? _value.livestockFeed
          : livestockFeed // ignore: cast_nullable_to_non_nullable
              as String?,
      feedWeight: freezed == feedWeight
          ? _value.feedWeight
          : feedWeight // ignore: cast_nullable_to_non_nullable
              as int?,
      vitamin: freezed == vitamin
          ? _value.vitamin
          : vitamin // ignore: cast_nullable_to_non_nullable
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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
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
      String? location,
      @JsonKey(name: 'livestock_feed') String? livestockFeed,
      @JsonKey(name: 'feed_weight') int? feedWeight,
      String? vitamin,
      int? costs,
      String? details,
      @JsonKey(name: 'note_images') List<String>? images,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
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
    Object? location = freezed,
    Object? livestockFeed = freezed,
    Object? feedWeight = freezed,
    Object? vitamin = freezed,
    Object? costs = freezed,
    Object? details = freezed,
    Object? images = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      livestockFeed: freezed == livestockFeed
          ? _value.livestockFeed
          : livestockFeed // ignore: cast_nullable_to_non_nullable
              as String?,
      feedWeight: freezed == feedWeight
          ? _value.feedWeight
          : feedWeight // ignore: cast_nullable_to_non_nullable
              as int?,
      vitamin: freezed == vitamin
          ? _value.vitamin
          : vitamin // ignore: cast_nullable_to_non_nullable
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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
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
      required this.location,
      @JsonKey(name: 'livestock_feed') required this.livestockFeed,
      @JsonKey(name: 'feed_weight') required this.feedWeight,
      required this.vitamin,
      required this.costs,
      required this.details,
      @JsonKey(name: 'note_images') final List<String>? images,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt})
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
  final String? location;
  @override
  @JsonKey(name: 'livestock_feed')
  final String? livestockFeed;
  @override
  @JsonKey(name: 'feed_weight')
  final int? feedWeight;
  @override
  final String? vitamin;
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
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'NoteData(id: $id, livestockId: $livestockId, livestockVID: $livestockVID, livestockName: $livestockName, livestockCage: $livestockCage, location: $location, livestockFeed: $livestockFeed, feedWeight: $feedWeight, vitamin: $vitamin, costs: $costs, details: $details, images: $images, createdAt: $createdAt, updatedAt: $updatedAt)';
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
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.livestockFeed, livestockFeed) ||
                other.livestockFeed == livestockFeed) &&
            (identical(other.feedWeight, feedWeight) ||
                other.feedWeight == feedWeight) &&
            (identical(other.vitamin, vitamin) || other.vitamin == vitamin) &&
            (identical(other.costs, costs) || other.costs == costs) &&
            (identical(other.details, details) || other.details == details) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
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
      location,
      livestockFeed,
      feedWeight,
      vitamin,
      costs,
      details,
      const DeepCollectionEquality().hash(_images),
      createdAt,
      updatedAt);

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
          required final String? location,
          @JsonKey(name: 'livestock_feed') required final String? livestockFeed,
          @JsonKey(name: 'feed_weight') required final int? feedWeight,
          required final String? vitamin,
          required final int? costs,
          required final String? details,
          @JsonKey(name: 'note_images') final List<String>? images,
          @JsonKey(name: 'created_at') required final String? createdAt,
          @JsonKey(name: 'updated_at') required final String? updatedAt}) =
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
  String? get location;
  @override
  @JsonKey(name: 'livestock_feed')
  String? get livestockFeed;
  @override
  @JsonKey(name: 'feed_weight')
  int? get feedWeight;
  @override
  String? get vitamin;
  @override
  int? get costs;
  @override
  String? get details;
  @override
  @JsonKey(name: 'note_images')
  List<String>? get images;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$NoteDataImplCopyWith<_$NoteDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
