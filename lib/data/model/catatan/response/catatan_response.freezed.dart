// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catatan_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CatatanResponse _$CatatanResponseFromJson(Map<String, dynamic> json) {
  return _CatatanResponse.fromJson(json);
}

/// @nodoc
mixin _$CatatanResponse {
  String? get name => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  bool? get error => throw _privateConstructorUsedError;
  CatatanData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatatanResponseCopyWith<CatatanResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatatanResponseCopyWith<$Res> {
  factory $CatatanResponseCopyWith(
          CatatanResponse value, $Res Function(CatatanResponse) then) =
      _$CatatanResponseCopyWithImpl<$Res, CatatanResponse>;
  @useResult
  $Res call(
      {String? name,
      String? message,
      int? code,
      int? status,
      bool? error,
      CatatanData? data});

  $CatatanDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CatatanResponseCopyWithImpl<$Res, $Val extends CatatanResponse>
    implements $CatatanResponseCopyWith<$Res> {
  _$CatatanResponseCopyWithImpl(this._value, this._then);

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
              as CatatanData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CatatanDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CatatanDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CatatanResponseImplCopyWith<$Res>
    implements $CatatanResponseCopyWith<$Res> {
  factory _$$CatatanResponseImplCopyWith(_$CatatanResponseImpl value,
          $Res Function(_$CatatanResponseImpl) then) =
      __$$CatatanResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? message,
      int? code,
      int? status,
      bool? error,
      CatatanData? data});

  @override
  $CatatanDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CatatanResponseImplCopyWithImpl<$Res>
    extends _$CatatanResponseCopyWithImpl<$Res, _$CatatanResponseImpl>
    implements _$$CatatanResponseImplCopyWith<$Res> {
  __$$CatatanResponseImplCopyWithImpl(
      _$CatatanResponseImpl _value, $Res Function(_$CatatanResponseImpl) _then)
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
    return _then(_$CatatanResponseImpl(
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
              as CatatanData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CatatanResponseImpl implements _CatatanResponse {
  _$CatatanResponseImpl(
      {required this.name,
      required this.message,
      required this.code,
      required this.status,
      required this.error,
      required this.data});

  factory _$CatatanResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatatanResponseImplFromJson(json);

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
  final CatatanData? data;

  @override
  String toString() {
    return 'CatatanResponse(name: $name, message: $message, code: $code, status: $status, error: $error, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatatanResponseImpl &&
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
  _$$CatatanResponseImplCopyWith<_$CatatanResponseImpl> get copyWith =>
      __$$CatatanResponseImplCopyWithImpl<_$CatatanResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CatatanResponseImplToJson(
      this,
    );
  }
}

abstract class _CatatanResponse implements CatatanResponse {
  factory _CatatanResponse(
      {required final String? name,
      required final String? message,
      required final int? code,
      required final int? status,
      required final bool? error,
      required final CatatanData? data}) = _$CatatanResponseImpl;

  factory _CatatanResponse.fromJson(Map<String, dynamic> json) =
      _$CatatanResponseImpl.fromJson;

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
  CatatanData? get data;
  @override
  @JsonKey(ignore: true)
  _$$CatatanResponseImplCopyWith<_$CatatanResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
