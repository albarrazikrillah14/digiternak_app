// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cages_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CagesResponse _$CagesResponseFromJson(Map<String, dynamic> json) {
  return _CagesResponse.fromJson(json);
}

/// @nodoc
mixin _$CagesResponse {
  String? get name => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  bool? get error => throw _privateConstructorUsedError;
  List<CageResult>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CagesResponseCopyWith<CagesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CagesResponseCopyWith<$Res> {
  factory $CagesResponseCopyWith(
          CagesResponse value, $Res Function(CagesResponse) then) =
      _$CagesResponseCopyWithImpl<$Res, CagesResponse>;
  @useResult
  $Res call(
      {String? name,
      String? message,
      int? code,
      int? status,
      bool? error,
      List<CageResult>? data});
}

/// @nodoc
class _$CagesResponseCopyWithImpl<$Res, $Val extends CagesResponse>
    implements $CagesResponseCopyWith<$Res> {
  _$CagesResponseCopyWithImpl(this._value, this._then);

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
              as List<CageResult>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CagesResponseImplCopyWith<$Res>
    implements $CagesResponseCopyWith<$Res> {
  factory _$$CagesResponseImplCopyWith(
          _$CagesResponseImpl value, $Res Function(_$CagesResponseImpl) then) =
      __$$CagesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? message,
      int? code,
      int? status,
      bool? error,
      List<CageResult>? data});
}

/// @nodoc
class __$$CagesResponseImplCopyWithImpl<$Res>
    extends _$CagesResponseCopyWithImpl<$Res, _$CagesResponseImpl>
    implements _$$CagesResponseImplCopyWith<$Res> {
  __$$CagesResponseImplCopyWithImpl(
      _$CagesResponseImpl _value, $Res Function(_$CagesResponseImpl) _then)
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
    return _then(_$CagesResponseImpl(
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
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CageResult>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CagesResponseImpl implements _CagesResponse {
  _$CagesResponseImpl(
      {required this.name,
      required this.message,
      required this.code,
      required this.status,
      required this.error,
      required final List<CageResult>? data})
      : _data = data;

  factory _$CagesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CagesResponseImplFromJson(json);

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
  final List<CageResult>? _data;
  @override
  List<CageResult>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CagesResponse(name: $name, message: $message, code: $code, status: $status, error: $error, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CagesResponseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, message, code, status,
      error, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CagesResponseImplCopyWith<_$CagesResponseImpl> get copyWith =>
      __$$CagesResponseImplCopyWithImpl<_$CagesResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CagesResponseImplToJson(
      this,
    );
  }
}

abstract class _CagesResponse implements CagesResponse {
  factory _CagesResponse(
      {required final String? name,
      required final String? message,
      required final int? code,
      required final int? status,
      required final bool? error,
      required final List<CageResult>? data}) = _$CagesResponseImpl;

  factory _CagesResponse.fromJson(Map<String, dynamic> json) =
      _$CagesResponseImpl.fromJson;

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
  List<CageResult>? get data;
  @override
  @JsonKey(ignore: true)
  _$$CagesResponseImplCopyWith<_$CagesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
