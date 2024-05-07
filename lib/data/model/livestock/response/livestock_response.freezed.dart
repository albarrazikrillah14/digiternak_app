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
  String get message => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
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
  $Res call({String message, bool error, List<LivestockData>? data});
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
    Object? message = null,
    Object? error = null,
    Object? data = freezed,
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
  $Res call({String message, bool error, List<LivestockData>? data});
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
    Object? message = null,
    Object? error = null,
    Object? data = freezed,
  }) {
    return _then(_$LivestockResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
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
      {required this.message,
      required this.error,
      required final List<LivestockData>? data})
      : _data = data;

  factory _$LivestockResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LivestockResponseImplFromJson(json);

  @override
  final String message;
  @override
  final bool error;
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
    return 'LivestockResponse(message: $message, error: $error, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LivestockResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, error, const DeepCollectionEquality().hash(_data));

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
      {required final String message,
      required final bool error,
      required final List<LivestockData>? data}) = _$LivestockResponseImpl;

  factory _LivestockResponse.fromJson(Map<String, dynamic> json) =
      _$LivestockResponseImpl.fromJson;

  @override
  String get message;
  @override
  bool get error;
  @override
  List<LivestockData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$LivestockResponseImplCopyWith<_$LivestockResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
