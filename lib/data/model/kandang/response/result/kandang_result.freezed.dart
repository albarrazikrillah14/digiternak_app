// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kandang_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KandangResult _$KandangResultFromJson(Map<String, dynamic> json) {
  return _KandangResult.fromJson(json);
}

/// @nodoc
mixin _$KandangResult {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<int>? get livestocks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KandangResultCopyWith<KandangResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KandangResultCopyWith<$Res> {
  factory $KandangResultCopyWith(
          KandangResult value, $Res Function(KandangResult) then) =
      _$KandangResultCopyWithImpl<$Res, KandangResult>;
  @useResult
  $Res call(
      {int id,
      String name,
      String location,
      String description,
      List<int>? livestocks});
}

/// @nodoc
class _$KandangResultCopyWithImpl<$Res, $Val extends KandangResult>
    implements $KandangResultCopyWith<$Res> {
  _$KandangResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? location = null,
    Object? description = null,
    Object? livestocks = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      livestocks: freezed == livestocks
          ? _value.livestocks
          : livestocks // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KandangResultImplCopyWith<$Res>
    implements $KandangResultCopyWith<$Res> {
  factory _$$KandangResultImplCopyWith(
          _$KandangResultImpl value, $Res Function(_$KandangResultImpl) then) =
      __$$KandangResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String location,
      String description,
      List<int>? livestocks});
}

/// @nodoc
class __$$KandangResultImplCopyWithImpl<$Res>
    extends _$KandangResultCopyWithImpl<$Res, _$KandangResultImpl>
    implements _$$KandangResultImplCopyWith<$Res> {
  __$$KandangResultImplCopyWithImpl(
      _$KandangResultImpl _value, $Res Function(_$KandangResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? location = null,
    Object? description = null,
    Object? livestocks = freezed,
  }) {
    return _then(_$KandangResultImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      livestocks: freezed == livestocks
          ? _value._livestocks
          : livestocks // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KandangResultImpl implements _KandangResult {
  _$KandangResultImpl(
      {required this.id,
      required this.name,
      required this.location,
      required this.description,
      required final List<int>? livestocks})
      : _livestocks = livestocks;

  factory _$KandangResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$KandangResultImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String location;
  @override
  final String description;
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
    return 'KandangResult(id: $id, name: $name, location: $location, description: $description, livestocks: $livestocks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KandangResultImpl &&
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
  _$$KandangResultImplCopyWith<_$KandangResultImpl> get copyWith =>
      __$$KandangResultImplCopyWithImpl<_$KandangResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KandangResultImplToJson(
      this,
    );
  }
}

abstract class _KandangResult implements KandangResult {
  factory _KandangResult(
      {required final int id,
      required final String name,
      required final String location,
      required final String description,
      required final List<int>? livestocks}) = _$KandangResultImpl;

  factory _KandangResult.fromJson(Map<String, dynamic> json) =
      _$KandangResultImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get location;
  @override
  String get description;
  @override
  List<int>? get livestocks;
  @override
  @JsonKey(ignore: true)
  _$$KandangResultImplCopyWith<_$KandangResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
