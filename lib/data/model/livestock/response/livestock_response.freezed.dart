// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'livestock_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LivestockResponse _$LivestockResponseFromJson(Map<String, dynamic> json) {
  return _LivestockResponse.fromJson(json);
}

/// @nodoc
mixin _$LivestockResponse {
  String? get name => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  bool? get error => throw _privateConstructorUsedError;
  List<LivestockData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LivestockResponseCopyWith<LivestockResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LivestockResponseCopyWith<$Res> {
  factory $LivestockResponseCopyWith(
          LivestockResponse value, $Res Function(LivestockResponse) then) =
      _$LivestockResponseCopyWithImpl<$Res, LivestockResponse>;
  @useResult
  $Res call(
      {String? name,
      String? message,
      int? code,
      int? status,
      bool? error,
      List<LivestockData>? data});
}

/// @nodoc
class _$LivestockResponseCopyWithImpl<$Res, $Val extends LivestockResponse>
    implements $LivestockResponseCopyWith<$Res> {
  _$LivestockResponseCopyWithImpl(this._value, this._then);

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
              as List<LivestockData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LivestockResponseImplCopyWith<$Res>
    implements $LivestockResponseCopyWith<$Res> {
  factory _$$LivestockResponseImplCopyWith(_$LivestockResponseImpl value,
          $Res Function(_$LivestockResponseImpl) then) =
      __$$LivestockResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? message,
      int? code,
      int? status,
      bool? error,
      List<LivestockData>? data});
}

/// @nodoc
class __$$LivestockResponseImplCopyWithImpl<$Res>
    extends _$LivestockResponseCopyWithImpl<$Res, _$LivestockResponseImpl>
    implements _$$LivestockResponseImplCopyWith<$Res> {
  __$$LivestockResponseImplCopyWithImpl(_$LivestockResponseImpl _value,
      $Res Function(_$LivestockResponseImpl) _then)
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
    return _then(_$LivestockResponseImpl(
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
              as List<LivestockData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LivestockResponseImpl implements _LivestockResponse {
  _$LivestockResponseImpl(
      {required this.name,
      required this.message,
      required this.code,
      required this.status,
      required this.error,
      required final List<LivestockData>? data})
      : _data = data;

  factory _$LivestockResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LivestockResponseImplFromJson(json);

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
  final List<LivestockData>? _data;
  @override
  List<LivestockData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LivestockResponse(name: $name, message: $message, code: $code, status: $status, error: $error, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LivestockResponseImpl &&
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
  _$$LivestockResponseImplCopyWith<_$LivestockResponseImpl> get copyWith =>
      __$$LivestockResponseImplCopyWithImpl<_$LivestockResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LivestockResponseImplToJson(
      this,
    );
  }
}

abstract class _LivestockResponse implements LivestockResponse {
  factory _LivestockResponse(
      {required final String? name,
      required final String? message,
      required final int? code,
      required final int? status,
      required final bool? error,
      required final List<LivestockData>? data}) = _$LivestockResponseImpl;

  factory _LivestockResponse.fromJson(Map<String, dynamic> json) =
      _$LivestockResponseImpl.fromJson;

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
  List<LivestockData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$LivestockResponseImplCopyWith<_$LivestockResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
