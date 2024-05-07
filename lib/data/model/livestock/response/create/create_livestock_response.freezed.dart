// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_livestock_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateLivestockResponse _$CreateLivestockResponseFromJson(
    Map<String, dynamic> json) {
  return _CreateLivestockResponse.fromJson(json);
}

/// @nodoc
mixin _$CreateLivestockResponse {
  String get message => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  LivestockData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateLivestockResponseCopyWith<CreateLivestockResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateLivestockResponseCopyWith<$Res> {
  factory $CreateLivestockResponseCopyWith(CreateLivestockResponse value,
          $Res Function(CreateLivestockResponse) then) =
      _$CreateLivestockResponseCopyWithImpl<$Res, CreateLivestockResponse>;
  @useResult
  $Res call({String message, bool error, LivestockData data});

  $LivestockDataCopyWith<$Res> get data;
}

/// @nodoc
class _$CreateLivestockResponseCopyWithImpl<$Res,
        $Val extends CreateLivestockResponse>
    implements $CreateLivestockResponseCopyWith<$Res> {
  _$CreateLivestockResponseCopyWithImpl(this._value, this._then);

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
              as LivestockData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LivestockDataCopyWith<$Res> get data {
    return $LivestockDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateLivestockResponseImplCopyWith<$Res>
    implements $CreateLivestockResponseCopyWith<$Res> {
  factory _$$CreateLivestockResponseImplCopyWith(
          _$CreateLivestockResponseImpl value,
          $Res Function(_$CreateLivestockResponseImpl) then) =
      __$$CreateLivestockResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, bool error, LivestockData data});

  @override
  $LivestockDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$CreateLivestockResponseImplCopyWithImpl<$Res>
    extends _$CreateLivestockResponseCopyWithImpl<$Res,
        _$CreateLivestockResponseImpl>
    implements _$$CreateLivestockResponseImplCopyWith<$Res> {
  __$$CreateLivestockResponseImplCopyWithImpl(
      _$CreateLivestockResponseImpl _value,
      $Res Function(_$CreateLivestockResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? error = null,
    Object? data = null,
  }) {
    return _then(_$CreateLivestockResponseImpl(
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
              as LivestockData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateLivestockResponseImpl implements _CreateLivestockResponse {
  _$CreateLivestockResponseImpl(
      {required this.message, required this.error, required this.data});

  factory _$CreateLivestockResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateLivestockResponseImplFromJson(json);

  @override
  final String message;
  @override
  final bool error;
  @override
  final LivestockData data;

  @override
  String toString() {
    return 'CreateLivestockResponse(message: $message, error: $error, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateLivestockResponseImpl &&
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
  _$$CreateLivestockResponseImplCopyWith<_$CreateLivestockResponseImpl>
      get copyWith => __$$CreateLivestockResponseImplCopyWithImpl<
          _$CreateLivestockResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateLivestockResponseImplToJson(
      this,
    );
  }
}

abstract class _CreateLivestockResponse implements CreateLivestockResponse {
  factory _CreateLivestockResponse(
      {required final String message,
      required final bool error,
      required final LivestockData data}) = _$CreateLivestockResponseImpl;

  factory _CreateLivestockResponse.fromJson(Map<String, dynamic> json) =
      _$CreateLivestockResponseImpl.fromJson;

  @override
  String get message;
  @override
  bool get error;
  @override
  LivestockData get data;
  @override
  @JsonKey(ignore: true)
  _$$CreateLivestockResponseImplCopyWith<_$CreateLivestockResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
