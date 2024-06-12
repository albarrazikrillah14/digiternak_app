// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bcs_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BcsData _$BcsDataFromJson(Map<String, dynamic> json) {
  return _BcsData.fromJson(json);
}

/// @nodoc
mixin _$BcsData {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'livestock_id')
  int get livestockId => throw _privateConstructorUsedError;
  @JsonKey(name: 'body_weight')
  int get bodyWeight => throw _privateConstructorUsedError;
  @JsonKey(name: 'chest_size')
  int get chestSize => throw _privateConstructorUsedError;
  int get hips => throw _privateConstructorUsedError;
  @JsonKey(name: 'bcs_images')
  List<String>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BcsDataCopyWith<BcsData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BcsDataCopyWith<$Res> {
  factory $BcsDataCopyWith(BcsData value, $Res Function(BcsData) then) =
      _$BcsDataCopyWithImpl<$Res, BcsData>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'livestock_id') int livestockId,
      @JsonKey(name: 'body_weight') int bodyWeight,
      @JsonKey(name: 'chest_size') int chestSize,
      int hips,
      @JsonKey(name: 'bcs_images') List<String>? images,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class _$BcsDataCopyWithImpl<$Res, $Val extends BcsData>
    implements $BcsDataCopyWith<$Res> {
  _$BcsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? livestockId = null,
    Object? bodyWeight = null,
    Object? chestSize = null,
    Object? hips = null,
    Object? images = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      livestockId: null == livestockId
          ? _value.livestockId
          : livestockId // ignore: cast_nullable_to_non_nullable
              as int,
      bodyWeight: null == bodyWeight
          ? _value.bodyWeight
          : bodyWeight // ignore: cast_nullable_to_non_nullable
              as int,
      chestSize: null == chestSize
          ? _value.chestSize
          : chestSize // ignore: cast_nullable_to_non_nullable
              as int,
      hips: null == hips
          ? _value.hips
          : hips // ignore: cast_nullable_to_non_nullable
              as int,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BcsDataImplCopyWith<$Res> implements $BcsDataCopyWith<$Res> {
  factory _$$BcsDataImplCopyWith(
          _$BcsDataImpl value, $Res Function(_$BcsDataImpl) then) =
      __$$BcsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'livestock_id') int livestockId,
      @JsonKey(name: 'body_weight') int bodyWeight,
      @JsonKey(name: 'chest_size') int chestSize,
      int hips,
      @JsonKey(name: 'bcs_images') List<String>? images,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class __$$BcsDataImplCopyWithImpl<$Res>
    extends _$BcsDataCopyWithImpl<$Res, _$BcsDataImpl>
    implements _$$BcsDataImplCopyWith<$Res> {
  __$$BcsDataImplCopyWithImpl(
      _$BcsDataImpl _value, $Res Function(_$BcsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? livestockId = null,
    Object? bodyWeight = null,
    Object? chestSize = null,
    Object? hips = null,
    Object? images = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$BcsDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      livestockId: null == livestockId
          ? _value.livestockId
          : livestockId // ignore: cast_nullable_to_non_nullable
              as int,
      bodyWeight: null == bodyWeight
          ? _value.bodyWeight
          : bodyWeight // ignore: cast_nullable_to_non_nullable
              as int,
      chestSize: null == chestSize
          ? _value.chestSize
          : chestSize // ignore: cast_nullable_to_non_nullable
              as int,
      hips: null == hips
          ? _value.hips
          : hips // ignore: cast_nullable_to_non_nullable
              as int,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BcsDataImpl implements _BcsData {
  _$BcsDataImpl(
      {required this.id,
      @JsonKey(name: 'livestock_id') required this.livestockId,
      @JsonKey(name: 'body_weight') required this.bodyWeight,
      @JsonKey(name: 'chest_size') required this.chestSize,
      required this.hips,
      @JsonKey(name: 'bcs_images') required final List<String>? images,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt})
      : _images = images;

  factory _$BcsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BcsDataImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'livestock_id')
  final int livestockId;
  @override
  @JsonKey(name: 'body_weight')
  final int bodyWeight;
  @override
  @JsonKey(name: 'chest_size')
  final int chestSize;
  @override
  final int hips;
  final List<String>? _images;
  @override
  @JsonKey(name: 'bcs_images')
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  @override
  String toString() {
    return 'BcsData(id: $id, livestockId: $livestockId, bodyWeight: $bodyWeight, chestSize: $chestSize, hips: $hips, images: $images, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BcsDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.livestockId, livestockId) ||
                other.livestockId == livestockId) &&
            (identical(other.bodyWeight, bodyWeight) ||
                other.bodyWeight == bodyWeight) &&
            (identical(other.chestSize, chestSize) ||
                other.chestSize == chestSize) &&
            (identical(other.hips, hips) || other.hips == hips) &&
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
      bodyWeight,
      chestSize,
      hips,
      const DeepCollectionEquality().hash(_images),
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BcsDataImplCopyWith<_$BcsDataImpl> get copyWith =>
      __$$BcsDataImplCopyWithImpl<_$BcsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BcsDataImplToJson(
      this,
    );
  }
}

abstract class _BcsData implements BcsData {
  factory _BcsData(
          {required final int id,
          @JsonKey(name: 'livestock_id') required final int livestockId,
          @JsonKey(name: 'body_weight') required final int bodyWeight,
          @JsonKey(name: 'chest_size') required final int chestSize,
          required final int hips,
          @JsonKey(name: 'bcs_images') required final List<String>? images,
          @JsonKey(name: 'created_at') required final String createdAt,
          @JsonKey(name: 'updated_at') required final String updatedAt}) =
      _$BcsDataImpl;

  factory _BcsData.fromJson(Map<String, dynamic> json) = _$BcsDataImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'livestock_id')
  int get livestockId;
  @override
  @JsonKey(name: 'body_weight')
  int get bodyWeight;
  @override
  @JsonKey(name: 'chest_size')
  int get chestSize;
  @override
  int get hips;
  @override
  @JsonKey(name: 'bcs_images')
  List<String>? get images;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$BcsDataImplCopyWith<_$BcsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
