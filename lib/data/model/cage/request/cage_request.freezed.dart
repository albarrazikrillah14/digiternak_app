// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cage_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CageRequest _$CageRequestFromJson(Map<String, dynamic> json) {
  return _CageRequest.fromJson(json);
}

/// @nodoc
mixin _$CageRequest {
  String get name => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CageRequestCopyWith<CageRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CageRequestCopyWith<$Res> {
  factory $CageRequestCopyWith(
          CageRequest value, $Res Function(CageRequest) then) =
      _$CageRequestCopyWithImpl<$Res, CageRequest>;
  @useResult
  $Res call({String name, String location, String description});
}

/// @nodoc
class _$CageRequestCopyWithImpl<$Res, $Val extends CageRequest>
    implements $CageRequestCopyWith<$Res> {
  _$CageRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? location = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CageRequestImplCopyWith<$Res>
    implements $CageRequestCopyWith<$Res> {
  factory _$$CageRequestImplCopyWith(
          _$CageRequestImpl value, $Res Function(_$CageRequestImpl) then) =
      __$$CageRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String location, String description});
}

/// @nodoc
class __$$CageRequestImplCopyWithImpl<$Res>
    extends _$CageRequestCopyWithImpl<$Res, _$CageRequestImpl>
    implements _$$CageRequestImplCopyWith<$Res> {
  __$$CageRequestImplCopyWithImpl(
      _$CageRequestImpl _value, $Res Function(_$CageRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? location = null,
    Object? description = null,
  }) {
    return _then(_$CageRequestImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CageRequestImpl implements _CageRequest {
  _$CageRequestImpl(
      {required this.name, required this.location, required this.description});

  factory _$CageRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CageRequestImplFromJson(json);

  @override
  final String name;
  @override
  final String location;
  @override
  final String description;

  @override
  String toString() {
    return 'CageRequest(name: $name, location: $location, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CageRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, location, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CageRequestImplCopyWith<_$CageRequestImpl> get copyWith =>
      __$$CageRequestImplCopyWithImpl<_$CageRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CageRequestImplToJson(
      this,
    );
  }
}

abstract class _CageRequest implements CageRequest {
  factory _CageRequest(
      {required final String name,
      required final String location,
      required final String description}) = _$CageRequestImpl;

  factory _CageRequest.fromJson(Map<String, dynamic> json) =
      _$CageRequestImpl.fromJson;

  @override
  String get name;
  @override
  String get location;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$CageRequestImplCopyWith<_$CageRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
