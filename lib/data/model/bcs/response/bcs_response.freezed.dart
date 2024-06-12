// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bcs_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BcsResponse _$BcsResponseFromJson(Map<String, dynamic> json) {
  return _BcsResponse.fromJson(json);
}

/// @nodoc
mixin _$BcsResponse {
  String? get name => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  List<BcsData>? get data => throw _privateConstructorUsedError;
  List<String>? get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BcsResponseCopyWith<BcsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BcsResponseCopyWith<$Res> {
  factory $BcsResponseCopyWith(
          BcsResponse value, $Res Function(BcsResponse) then) =
      _$BcsResponseCopyWithImpl<$Res, BcsResponse>;
  @useResult
  $Res call(
      {String? name,
      int? code,
      int? status,
      String? message,
      bool error,
      List<BcsData>? data,
      List<String>? details});
}

/// @nodoc
class _$BcsResponseCopyWithImpl<$Res, $Val extends BcsResponse>
    implements $BcsResponseCopyWith<$Res> {
  _$BcsResponseCopyWithImpl(this._value, this._then);

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
              as List<BcsData>?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BcsResponseImplCopyWith<$Res>
    implements $BcsResponseCopyWith<$Res> {
  factory _$$BcsResponseImplCopyWith(
          _$BcsResponseImpl value, $Res Function(_$BcsResponseImpl) then) =
      __$$BcsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      int? code,
      int? status,
      String? message,
      bool error,
      List<BcsData>? data,
      List<String>? details});
}

/// @nodoc
class __$$BcsResponseImplCopyWithImpl<$Res>
    extends _$BcsResponseCopyWithImpl<$Res, _$BcsResponseImpl>
    implements _$$BcsResponseImplCopyWith<$Res> {
  __$$BcsResponseImplCopyWithImpl(
      _$BcsResponseImpl _value, $Res Function(_$BcsResponseImpl) _then)
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
    return _then(_$BcsResponseImpl(
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
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BcsData>?,
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BcsResponseImpl implements _BcsResponse {
  _$BcsResponseImpl(
      {required this.name,
      required this.code,
      required this.status,
      required this.message,
      required this.error,
      required final List<BcsData>? data,
      required final List<String>? details})
      : _data = data,
        _details = details;

  factory _$BcsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BcsResponseImplFromJson(json);

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
  final List<BcsData>? _data;
  @override
  List<BcsData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
    return 'BcsResponse(name: $name, code: $code, status: $status, message: $message, error: $error, data: $data, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BcsResponseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      code,
      status,
      message,
      error,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_details));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BcsResponseImplCopyWith<_$BcsResponseImpl> get copyWith =>
      __$$BcsResponseImplCopyWithImpl<_$BcsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BcsResponseImplToJson(
      this,
    );
  }
}

abstract class _BcsResponse implements BcsResponse {
  factory _BcsResponse(
      {required final String? name,
      required final int? code,
      required final int? status,
      required final String? message,
      required final bool error,
      required final List<BcsData>? data,
      required final List<String>? details}) = _$BcsResponseImpl;

  factory _BcsResponse.fromJson(Map<String, dynamic> json) =
      _$BcsResponseImpl.fromJson;

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
  List<BcsData>? get data;
  @override
  List<String>? get details;
  @override
  @JsonKey(ignore: true)
  _$$BcsResponseImplCopyWith<_$BcsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
