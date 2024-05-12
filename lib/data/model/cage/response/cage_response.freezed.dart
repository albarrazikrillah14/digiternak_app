// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cage_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CageResponse _$CageResponseFromJson(Map<String, dynamic> json) {
  return _CageResponse.fromJson(json);
}

/// @nodoc
mixin _$CageResponse {
  String? get name => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  bool? get error => throw _privateConstructorUsedError;
  CageResult? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CageResponseCopyWith<CageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CageResponseCopyWith<$Res> {
  factory $CageResponseCopyWith(
          CageResponse value, $Res Function(CageResponse) then) =
      _$CageResponseCopyWithImpl<$Res, CageResponse>;
  @useResult
  $Res call(
      {String? name,
      String? message,
      int? code,
      int? status,
      bool? error,
      CageResult? data});

  $CageResultCopyWith<$Res>? get data;
}

/// @nodoc
class _$CageResponseCopyWithImpl<$Res, $Val extends CageResponse>
    implements $CageResponseCopyWith<$Res> {
  _$CageResponseCopyWithImpl(this._value, this._then);

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
    Object? error = freezed,
    Object? data = freezed,
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
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CageResult?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CageResultCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CageResultCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CageResponseImplCopyWith<$Res>
    implements $CageResponseCopyWith<$Res> {
  factory _$$CageResponseImplCopyWith(
          _$CageResponseImpl value, $Res Function(_$CageResponseImpl) then) =
      __$$CageResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? message,
      int? code,
      int? status,
      bool? error,
      CageResult? data});

  @override
  $CageResultCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CageResponseImplCopyWithImpl<$Res>
    extends _$CageResponseCopyWithImpl<$Res, _$CageResponseImpl>
    implements _$$CageResponseImplCopyWith<$Res> {
  __$$CageResponseImplCopyWithImpl(
      _$CageResponseImpl _value, $Res Function(_$CageResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? status = freezed,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CageResponseImpl(
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
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CageResult?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CageResponseImpl implements _CageResponse {
  _$CageResponseImpl(
      {required this.name,
      required this.message,
      required this.code,
      required this.status,
      required this.error,
      required this.data});

  factory _$CageResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CageResponseImplFromJson(json);

  @override
  final String? name;
  @override
  final String? message;
  @override
  final int? code;
  @override
  final int? status;
  @override
  final bool? error;
  @override
  final CageResult? data;

  @override
  String toString() {
    return 'CageResponse(name: $name, message: $message, code: $code, status: $status, error: $error, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CageResponseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, message, code, status, error, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CageResponseImplCopyWith<_$CageResponseImpl> get copyWith =>
      __$$CageResponseImplCopyWithImpl<_$CageResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CageResponseImplToJson(
      this,
    );
  }
}

abstract class _CageResponse implements CageResponse {
  factory _CageResponse(
      {required final String? name,
      required final String? message,
      required final int? code,
      required final int? status,
      required final bool? error,
      required final CageResult? data}) = _$CageResponseImpl;

  factory _CageResponse.fromJson(Map<String, dynamic> json) =
      _$CageResponseImpl.fromJson;

  @override
  String? get name;
  @override
  String? get message;
  @override
  int? get code;
  @override
  int? get status;
  @override
  bool? get error;
  @override
  CageResult? get data;
  @override
  @JsonKey(ignore: true)
  _$$CageResponseImplCopyWith<_$CageResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
