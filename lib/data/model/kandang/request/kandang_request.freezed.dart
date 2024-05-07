// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kandang_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KandangRequest _$KandangRequestFromJson(Map<String, dynamic> json) {
  return _KandangRequest.fromJson(json);
}

/// @nodoc
mixin _$KandangRequest {
  String get name => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KandangRequestCopyWith<KandangRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KandangRequestCopyWith<$Res> {
  factory $KandangRequestCopyWith(
          KandangRequest value, $Res Function(KandangRequest) then) =
      _$KandangRequestCopyWithImpl<$Res, KandangRequest>;
  @useResult
  $Res call({String name, String location, String description});
}

/// @nodoc
class _$KandangRequestCopyWithImpl<$Res, $Val extends KandangRequest>
    implements $KandangRequestCopyWith<$Res> {
  _$KandangRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$KandangRequestImplCopyWith<$Res>
    implements $KandangRequestCopyWith<$Res> {
  factory _$$KandangRequestImplCopyWith(_$KandangRequestImpl value,
          $Res Function(_$KandangRequestImpl) then) =
      __$$KandangRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String location, String description});
}

/// @nodoc
class __$$KandangRequestImplCopyWithImpl<$Res>
    extends _$KandangRequestCopyWithImpl<$Res, _$KandangRequestImpl>
    implements _$$KandangRequestImplCopyWith<$Res> {
  __$$KandangRequestImplCopyWithImpl(
      _$KandangRequestImpl _value, $Res Function(_$KandangRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? location = null,
    Object? description = null,
  }) {
    return _then(_$KandangRequestImpl(
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
class _$KandangRequestImpl implements _KandangRequest {
  _$KandangRequestImpl(
      {required this.name, required this.location, required this.description});

  factory _$KandangRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$KandangRequestImplFromJson(json);

  @override
  final String name;
  @override
  final String location;
  @override
  final String description;

  @override
  String toString() {
    return 'KandangRequest(name: $name, location: $location, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KandangRequestImpl &&
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
  _$$KandangRequestImplCopyWith<_$KandangRequestImpl> get copyWith =>
      __$$KandangRequestImplCopyWithImpl<_$KandangRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KandangRequestImplToJson(
      this,
    );
  }
}

abstract class _KandangRequest implements KandangRequest {
  factory _KandangRequest(
      {required final String name,
      required final String location,
      required final String description}) = _$KandangRequestImpl;

  factory _KandangRequest.fromJson(Map<String, dynamic> json) =
      _$KandangRequestImpl.fromJson;

  @override
  String get name;
  @override
  String get location;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$KandangRequestImplCopyWith<_$KandangRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
