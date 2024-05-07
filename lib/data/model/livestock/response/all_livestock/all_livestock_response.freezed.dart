// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_livestock_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AllLivestockResponse _$AllLivestockResponseFromJson(Map<String, dynamic> json) {
  return _AllLivestockResponse.fromJson(json);
}

/// @nodoc
mixin _$AllLivestockResponse {
  String get message => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  List<LivestockData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllLivestockResponseCopyWith<AllLivestockResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllLivestockResponseCopyWith<$Res> {
  factory $AllLivestockResponseCopyWith(AllLivestockResponse value,
          $Res Function(AllLivestockResponse) then) =
      _$AllLivestockResponseCopyWithImpl<$Res, AllLivestockResponse>;
  @useResult
  $Res call({String message, bool error, List<LivestockData>? data});
}

/// @nodoc
class _$AllLivestockResponseCopyWithImpl<$Res,
        $Val extends AllLivestockResponse>
    implements $AllLivestockResponseCopyWith<$Res> {
  _$AllLivestockResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$AllLivestockResponseImplCopyWith<$Res>
    implements $AllLivestockResponseCopyWith<$Res> {
  factory _$$AllLivestockResponseImplCopyWith(_$AllLivestockResponseImpl value,
          $Res Function(_$AllLivestockResponseImpl) then) =
      __$$AllLivestockResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, bool error, List<LivestockData>? data});
}

/// @nodoc
class __$$AllLivestockResponseImplCopyWithImpl<$Res>
    extends _$AllLivestockResponseCopyWithImpl<$Res, _$AllLivestockResponseImpl>
    implements _$$AllLivestockResponseImplCopyWith<$Res> {
  __$$AllLivestockResponseImplCopyWithImpl(_$AllLivestockResponseImpl _value,
      $Res Function(_$AllLivestockResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? error = null,
    Object? data = freezed,
  }) {
    return _then(_$AllLivestockResponseImpl(
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
class _$AllLivestockResponseImpl implements _AllLivestockResponse {
  _$AllLivestockResponseImpl(
      {required this.message,
      required this.error,
      required final List<LivestockData>? data})
      : _data = data;

  factory _$AllLivestockResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllLivestockResponseImplFromJson(json);

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
    return 'AllLivestockResponse(message: $message, error: $error, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllLivestockResponseImpl &&
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
  _$$AllLivestockResponseImplCopyWith<_$AllLivestockResponseImpl>
      get copyWith =>
          __$$AllLivestockResponseImplCopyWithImpl<_$AllLivestockResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllLivestockResponseImplToJson(
      this,
    );
  }
}

abstract class _AllLivestockResponse implements AllLivestockResponse {
  factory _AllLivestockResponse(
      {required final String message,
      required final bool error,
      required final List<LivestockData>? data}) = _$AllLivestockResponseImpl;

  factory _AllLivestockResponse.fromJson(Map<String, dynamic> json) =
      _$AllLivestockResponseImpl.fromJson;

  @override
  String get message;
  @override
  bool get error;
  @override
  List<LivestockData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$AllLivestockResponseImplCopyWith<_$AllLivestockResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
