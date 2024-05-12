// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cage_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CageResult _$CageResultFromJson(Map<String, dynamic> json) {
  return _CageResult.fromJson(json);
}

/// @nodoc
mixin _$CageResult {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<int>? get livestocks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CageResultCopyWith<CageResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CageResultCopyWith<$Res> {
  factory $CageResultCopyWith(
          CageResult value, $Res Function(CageResult) then) =
      _$CageResultCopyWithImpl<$Res, CageResult>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? location,
      String? description,
      List<int>? livestocks});
}

/// @nodoc
class _$CageResultCopyWithImpl<$Res, $Val extends CageResult>
    implements $CageResultCopyWith<$Res> {
  _$CageResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? location = freezed,
    Object? description = freezed,
    Object? livestocks = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      livestocks: freezed == livestocks
          ? _value.livestocks
          : livestocks // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CageResultImplCopyWith<$Res>
    implements $CageResultCopyWith<$Res> {
  factory _$$CageResultImplCopyWith(
          _$CageResultImpl value, $Res Function(_$CageResultImpl) then) =
      __$$CageResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? location,
      String? description,
      List<int>? livestocks});
}

/// @nodoc
class __$$CageResultImplCopyWithImpl<$Res>
    extends _$CageResultCopyWithImpl<$Res, _$CageResultImpl>
    implements _$$CageResultImplCopyWith<$Res> {
  __$$CageResultImplCopyWithImpl(
      _$CageResultImpl _value, $Res Function(_$CageResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? location = freezed,
    Object? description = freezed,
    Object? livestocks = freezed,
  }) {
    return _then(_$CageResultImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      livestocks: freezed == livestocks
          ? _value._livestocks
          : livestocks // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CageResultImpl implements _CageResult {
  _$CageResultImpl(
      {required this.id,
      required this.name,
      required this.location,
      required this.description,
      required final List<int>? livestocks})
      : _livestocks = livestocks;

  factory _$CageResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$CageResultImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? location;
  @override
  final String? description;
  final List<int>? _livestocks;
  @override
  List<int>? get livestocks {
    final value = _livestocks;
    if (value == null) return null;
    if (_livestocks is EqualUnmodifiableListView) return _livestocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CageResult(id: $id, name: $name, location: $location, description: $description, livestocks: $livestocks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CageResultImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._livestocks, _livestocks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, location, description,
      const DeepCollectionEquality().hash(_livestocks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CageResultImplCopyWith<_$CageResultImpl> get copyWith =>
      __$$CageResultImplCopyWithImpl<_$CageResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CageResultImplToJson(
      this,
    );
  }
}

abstract class _CageResult implements CageResult {
  factory _CageResult(
      {required final int? id,
      required final String? name,
      required final String? location,
      required final String? description,
      required final List<int>? livestocks}) = _$CageResultImpl;

  factory _CageResult.fromJson(Map<String, dynamic> json) =
      _$CageResultImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get location;
  @override
  String? get description;
  @override
  List<int>? get livestocks;
  @override
  @JsonKey(ignore: true)
  _$$CageResultImplCopyWith<_$CageResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
