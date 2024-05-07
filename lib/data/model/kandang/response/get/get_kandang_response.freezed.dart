// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_kandang_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetKandangResponse _$GetKandangResponseFromJson(Map<String, dynamic> json) {
  return _GetKandangResponse.fromJson(json);
}

/// @nodoc
mixin _$GetKandangResponse {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetKandangResponseCopyWith<GetKandangResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetKandangResponseCopyWith<$Res> {
  factory $GetKandangResponseCopyWith(
          GetKandangResponse value, $Res Function(GetKandangResponse) then) =
      _$GetKandangResponseCopyWithImpl<$Res, GetKandangResponse>;
  @useResult
  $Res call({int id, String name, String location});
}

/// @nodoc
class _$GetKandangResponseCopyWithImpl<$Res, $Val extends GetKandangResponse>
    implements $GetKandangResponseCopyWith<$Res> {
  _$GetKandangResponseCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetKandangResponseImplCopyWith<$Res>
    implements $GetKandangResponseCopyWith<$Res> {
  factory _$$GetKandangResponseImplCopyWith(_$GetKandangResponseImpl value,
          $Res Function(_$GetKandangResponseImpl) then) =
      __$$GetKandangResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String location});
}

/// @nodoc
class __$$GetKandangResponseImplCopyWithImpl<$Res>
    extends _$GetKandangResponseCopyWithImpl<$Res, _$GetKandangResponseImpl>
    implements _$$GetKandangResponseImplCopyWith<$Res> {
  __$$GetKandangResponseImplCopyWithImpl(_$GetKandangResponseImpl _value,
      $Res Function(_$GetKandangResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? location = null,
  }) {
    return _then(_$GetKandangResponseImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetKandangResponseImpl implements _GetKandangResponse {
  _$GetKandangResponseImpl(
      {required this.id, required this.name, required this.location});

  factory _$GetKandangResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetKandangResponseImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String location;

  @override
  String toString() {
    return 'GetKandangResponse(id: $id, name: $name, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetKandangResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetKandangResponseImplCopyWith<_$GetKandangResponseImpl> get copyWith =>
      __$$GetKandangResponseImplCopyWithImpl<_$GetKandangResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetKandangResponseImplToJson(
      this,
    );
  }
}

abstract class _GetKandangResponse implements GetKandangResponse {
  factory _GetKandangResponse(
      {required final int id,
      required final String name,
      required final String location}) = _$GetKandangResponseImpl;

  factory _GetKandangResponse.fromJson(Map<String, dynamic> json) =
      _$GetKandangResponseImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get location;
  @override
  @JsonKey(ignore: true)
  _$$GetKandangResponseImplCopyWith<_$GetKandangResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
