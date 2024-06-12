// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_bcs_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateBcsResponse _$CreateBcsResponseFromJson(Map<String, dynamic> json) {
  return _CreateBcsResponse.fromJson(json);
}

/// @nodoc
mixin _$CreateBcsResponse {
  String? get name => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  BcsData? get data => throw _privateConstructorUsedError;
  List<String>? get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateBcsResponseCopyWith<CreateBcsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateBcsResponseCopyWith<$Res> {
  factory $CreateBcsResponseCopyWith(
          CreateBcsResponse value, $Res Function(CreateBcsResponse) then) =
      _$CreateBcsResponseCopyWithImpl<$Res, CreateBcsResponse>;
  @useResult
  $Res call(
      {String? name,
      int? code,
      int? status,
      String? message,
      bool error,
      BcsData? data,
      List<String>? details});

  $BcsDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CreateBcsResponseCopyWithImpl<$Res, $Val extends CreateBcsResponse>
    implements $CreateBcsResponseCopyWith<$Res> {
  _$CreateBcsResponseCopyWithImpl(this._value, this._then);

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
              as BcsData?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BcsDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BcsDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateBcsResponseImplCopyWith<$Res>
    implements $CreateBcsResponseCopyWith<$Res> {
  factory _$$CreateBcsResponseImplCopyWith(_$CreateBcsResponseImpl value,
          $Res Function(_$CreateBcsResponseImpl) then) =
      __$$CreateBcsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      int? code,
      int? status,
      String? message,
      bool error,
      BcsData? data,
      List<String>? details});

  @override
  $BcsDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CreateBcsResponseImplCopyWithImpl<$Res>
    extends _$CreateBcsResponseCopyWithImpl<$Res, _$CreateBcsResponseImpl>
    implements _$$CreateBcsResponseImplCopyWith<$Res> {
  __$$CreateBcsResponseImplCopyWithImpl(_$CreateBcsResponseImpl _value,
      $Res Function(_$CreateBcsResponseImpl) _then)
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
    return _then(_$CreateBcsResponseImpl(
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
              as BcsData?,
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateBcsResponseImpl implements _CreateBcsResponse {
  _$CreateBcsResponseImpl(
      {required this.name,
      required this.code,
      required this.status,
      required this.message,
      required this.error,
      required this.data,
      required final List<String>? details})
      : _details = details;

  factory _$CreateBcsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateBcsResponseImplFromJson(json);

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
  final BcsData? data;
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
    return 'CreateBcsResponse(name: $name, code: $code, status: $status, message: $message, error: $error, data: $data, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBcsResponseImpl &&
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
  _$$CreateBcsResponseImplCopyWith<_$CreateBcsResponseImpl> get copyWith =>
      __$$CreateBcsResponseImplCopyWithImpl<_$CreateBcsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateBcsResponseImplToJson(
      this,
    );
  }
}

abstract class _CreateBcsResponse implements CreateBcsResponse {
  factory _CreateBcsResponse(
      {required final String? name,
      required final int? code,
      required final int? status,
      required final String? message,
      required final bool error,
      required final BcsData? data,
      required final List<String>? details}) = _$CreateBcsResponseImpl;

  factory _CreateBcsResponse.fromJson(Map<String, dynamic> json) =
      _$CreateBcsResponseImpl.fromJson;

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
  BcsData? get data;
  @override
  List<String>? get details;
  @override
  @JsonKey(ignore: true)
  _$$CreateBcsResponseImplCopyWith<_$CreateBcsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
