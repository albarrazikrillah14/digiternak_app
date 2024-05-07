// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_kandang_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateKandangResponse _$CreateKandangResponseFromJson(
    Map<String, dynamic> json) {
  return _CreateKandangResponse.fromJson(json);
}

/// @nodoc
mixin _$CreateKandangResponse {
  String get message => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateKandangResponseCopyWith<CreateKandangResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateKandangResponseCopyWith<$Res> {
  factory $CreateKandangResponseCopyWith(CreateKandangResponse value,
          $Res Function(CreateKandangResponse) then) =
      _$CreateKandangResponseCopyWithImpl<$Res, CreateKandangResponse>;
  @useResult
  $Res call({String message, bool error});
}

/// @nodoc
class _$CreateKandangResponseCopyWithImpl<$Res,
        $Val extends CreateKandangResponse>
    implements $CreateKandangResponseCopyWith<$Res> {
  _$CreateKandangResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? error = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateKandangResponseImplCopyWith<$Res>
    implements $CreateKandangResponseCopyWith<$Res> {
  factory _$$CreateKandangResponseImplCopyWith(
          _$CreateKandangResponseImpl value,
          $Res Function(_$CreateKandangResponseImpl) then) =
      __$$CreateKandangResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, bool error});
}

/// @nodoc
class __$$CreateKandangResponseImplCopyWithImpl<$Res>
    extends _$CreateKandangResponseCopyWithImpl<$Res,
        _$CreateKandangResponseImpl>
    implements _$$CreateKandangResponseImplCopyWith<$Res> {
  __$$CreateKandangResponseImplCopyWithImpl(_$CreateKandangResponseImpl _value,
      $Res Function(_$CreateKandangResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? error = null,
  }) {
    return _then(_$CreateKandangResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateKandangResponseImpl implements _CreateKandangResponse {
  _$CreateKandangResponseImpl({required this.message, required this.error});

  factory _$CreateKandangResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateKandangResponseImplFromJson(json);

  @override
  final String message;
  @override
  final bool error;

  @override
  String toString() {
    return 'CreateKandangResponse(message: $message, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateKandangResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateKandangResponseImplCopyWith<_$CreateKandangResponseImpl>
      get copyWith => __$$CreateKandangResponseImplCopyWithImpl<
          _$CreateKandangResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateKandangResponseImplToJson(
      this,
    );
  }
}

abstract class _CreateKandangResponse implements CreateKandangResponse {
  factory _CreateKandangResponse(
      {required final String message,
      required final bool error}) = _$CreateKandangResponseImpl;

  factory _CreateKandangResponse.fromJson(Map<String, dynamic> json) =
      _$CreateKandangResponseImpl.fromJson;

  @override
  String get message;
  @override
  bool get error;
  @override
  @JsonKey(ignore: true)
  _$$CreateKandangResponseImplCopyWith<_$CreateKandangResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
