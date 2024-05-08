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
  String? get name => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
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
      {String? name,
      String? message,
      int? code,
      int? status,
      int? id,
      String? location,
      String? description,
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
    Object? name = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? status = freezed,
    Object? id = freezed,
    Object? location = freezed,
    Object? description = freezed,
    Object? livestocks = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$KandangResultImplCopyWith<$Res>
    implements $KandangResultCopyWith<$Res> {
  factory _$$KandangResultImplCopyWith(
          _$KandangResultImpl value, $Res Function(_$KandangResultImpl) then) =
      __$$KandangResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? message,
      int? code,
      int? status,
      int? id,
      String? location,
      String? description,
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
    Object? name = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? status = freezed,
    Object? id = freezed,
    Object? location = freezed,
    Object? description = freezed,
    Object? livestocks = freezed,
  }) {
    return _then(_$KandangResultImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$KandangResultImpl implements _KandangResult {
  _$KandangResultImpl(
      {required this.name,
      required this.message,
      required this.code,
      required this.status,
      required this.id,
      required this.location,
      required this.description,
      required final List<int>? livestocks})
      : _livestocks = livestocks;

  factory _$KandangResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$KandangResultImplFromJson(json);

  @override
  final String? name;
  @override
  final String? message;
  @override
  final int? code;
  @override
  final int? status;
  @override
  final int? id;
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
    return 'KandangResult(name: $name, message: $message, code: $code, status: $status, id: $id, location: $location, description: $description, livestocks: $livestocks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KandangResultImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._livestocks, _livestocks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, message, code, status, id,
      location, description, const DeepCollectionEquality().hash(_livestocks));

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
      {required final String? name,
      required final String? message,
      required final int? code,
      required final int? status,
      required final int? id,
      required final String? location,
      required final String? description,
      required final List<int>? livestocks}) = _$KandangResultImpl;

  factory _KandangResult.fromJson(Map<String, dynamic> json) =
      _$KandangResultImpl.fromJson;

  @override
  String? get name;
  @override
  String? get message;
  @override
  int? get code;
  @override
  int? get status;
  @override
  int? get id;
  @override
  String? get location;
  @override
  String? get description;
  @override
  List<int>? get livestocks;
  @override
  @JsonKey(ignore: true)
  _$$KandangResultImplCopyWith<_$KandangResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
