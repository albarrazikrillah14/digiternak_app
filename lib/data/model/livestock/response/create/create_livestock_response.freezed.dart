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
  String? get name => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  LivestockData? get data => throw _privateConstructorUsedError;
  List<String>? get details => throw _privateConstructorUsedError;

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
  $Res call(
      {String? name,
      int? code,
      int? status,
      String? message,
      bool error,
      LivestockData? data,
      List<String>? details});

  $LivestockDataCopyWith<$Res>? get data;
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
    Object? name = freezed,
    Object? code = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? error = null,
    Object? data = freezed,
    Object? details = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LivestockData?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LivestockDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $LivestockDataCopyWith<$Res>(_value.data!, (value) {
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
  $Res call(
      {String? name,
      int? code,
      int? status,
      String? message,
      bool error,
      LivestockData? data,
      List<String>? details});

  @override
  $LivestockDataCopyWith<$Res>? get data;
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
    Object? name = freezed,
    Object? code = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? error = null,
    Object? data = freezed,
    Object? details = freezed,
  }) {
    return _then(_$CreateLivestockResponseImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LivestockData?,
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateLivestockResponseImpl implements _CreateLivestockResponse {
  _$CreateLivestockResponseImpl(
      {required this.name,
      required this.code,
      required this.status,
      required this.message,
      required this.error,
      required this.data,
      required final List<String>? details})
      : _details = details;

  factory _$CreateLivestockResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateLivestockResponseImplFromJson(json);

  @override
  final String? name;
  @override
  final int? code;
  @override
  final int? status;
  @override
  final String? message;
  @override
  final bool error;
  @override
  final LivestockData? data;
  final List<String>? _details;
  @override
  List<String>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CreateLivestockResponse(name: $name, code: $code, status: $status, message: $message, error: $error, data: $data, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateLivestockResponseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, code, status, message,
      error, data, const DeepCollectionEquality().hash(_details));

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
      {required final String? name,
      required final int? code,
      required final int? status,
      required final String? message,
      required final bool error,
      required final LivestockData? data,
      required final List<String>? details}) = _$CreateLivestockResponseImpl;

  factory _CreateLivestockResponse.fromJson(Map<String, dynamic> json) =
      _$CreateLivestockResponseImpl.fromJson;

  @override
  String? get name;
  @override
  int? get code;
  @override
  int? get status;
  @override
  String? get message;
  @override
  bool get error;
  @override
  LivestockData? get data;
  @override
  List<String>? get details;
  @override
  @JsonKey(ignore: true)
  _$$CreateLivestockResponseImplCopyWith<_$CreateLivestockResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
