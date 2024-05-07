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
  String get message => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  CatatanData get data => throw _privateConstructorUsedError;

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
  $Res call({String message, bool error, CatatanData data});

  $CatatanDataCopyWith<$Res> get data;
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
    Object? message = null,
    Object? error = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CatatanData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CatatanDataCopyWith<$Res> get data {
    return $CatatanDataCopyWith<$Res>(_value.data, (value) {
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
  $Res call({String message, bool error, CatatanData data});

  @override
  $CatatanDataCopyWith<$Res> get data;
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
    Object? message = null,
    Object? error = null,
    Object? data = null,
  }) {
    return _then(_$CatatanResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CatatanData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CatatanResponseImpl implements _CatatanResponse {
  _$CatatanResponseImpl(
      {required this.message, required this.error, required this.data});

  factory _$CatatanResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatatanResponseImplFromJson(json);

  @override
  final String message;
  @override
  final bool error;
  @override
  final CatatanData data;

  @override
  String toString() {
    return 'CatatanResponse(message: $message, error: $error, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatatanResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, error, data);

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
      {required final String message,
      required final bool error,
      required final CatatanData data}) = _$CatatanResponseImpl;

  factory _CatatanResponse.fromJson(Map<String, dynamic> json) =
      _$CatatanResponseImpl.fromJson;

  @override
  String get message;
  @override
  bool get error;
  @override
  CatatanData get data;
  @override
  @JsonKey(ignore: true)
  _$$CatatanResponseImplCopyWith<_$CatatanResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
