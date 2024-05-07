// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_profile_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EditProfileResponse _$EditProfileResponseFromJson(Map<String, dynamic> json) {
  return _EditProfileResponse.fromJson(json);
}

/// @nodoc
mixin _$EditProfileResponse {
  String get message => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  ProfileResponse get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditProfileResponseCopyWith<EditProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileResponseCopyWith<$Res> {
  factory $EditProfileResponseCopyWith(
          EditProfileResponse value, $Res Function(EditProfileResponse) then) =
      _$EditProfileResponseCopyWithImpl<$Res, EditProfileResponse>;
  @useResult
  $Res call({String message, bool error, ProfileResponse data});

  $ProfileResponseCopyWith<$Res> get data;
}

/// @nodoc
class _$EditProfileResponseCopyWithImpl<$Res, $Val extends EditProfileResponse>
    implements $EditProfileResponseCopyWith<$Res> {
  _$EditProfileResponseCopyWithImpl(this._value, this._then);

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
              as ProfileResponse,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileResponseCopyWith<$Res> get data {
    return $ProfileResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EditProfileResponseImplCopyWith<$Res>
    implements $EditProfileResponseCopyWith<$Res> {
  factory _$$EditProfileResponseImplCopyWith(_$EditProfileResponseImpl value,
          $Res Function(_$EditProfileResponseImpl) then) =
      __$$EditProfileResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, bool error, ProfileResponse data});

  @override
  $ProfileResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$$EditProfileResponseImplCopyWithImpl<$Res>
    extends _$EditProfileResponseCopyWithImpl<$Res, _$EditProfileResponseImpl>
    implements _$$EditProfileResponseImplCopyWith<$Res> {
  __$$EditProfileResponseImplCopyWithImpl(_$EditProfileResponseImpl _value,
      $Res Function(_$EditProfileResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? error = null,
    Object? data = null,
  }) {
    return _then(_$EditProfileResponseImpl(
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
              as ProfileResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditProfileResponseImpl implements _EditProfileResponse {
  _$EditProfileResponseImpl(
      {required this.message, required this.error, required this.data});

  factory _$EditProfileResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditProfileResponseImplFromJson(json);

  @override
  final String message;
  @override
  final bool error;
  @override
  final ProfileResponse data;

  @override
  String toString() {
    return 'EditProfileResponse(message: $message, error: $error, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileResponseImpl &&
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
  _$$EditProfileResponseImplCopyWith<_$EditProfileResponseImpl> get copyWith =>
      __$$EditProfileResponseImplCopyWithImpl<_$EditProfileResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditProfileResponseImplToJson(
      this,
    );
  }
}

abstract class _EditProfileResponse implements EditProfileResponse {
  factory _EditProfileResponse(
      {required final String message,
      required final bool error,
      required final ProfileResponse data}) = _$EditProfileResponseImpl;

  factory _EditProfileResponse.fromJson(Map<String, dynamic> json) =
      _$EditProfileResponseImpl.fromJson;

  @override
  String get message;
  @override
  bool get error;
  @override
  ProfileResponse get data;
  @override
  @JsonKey(ignore: true)
  _$$EditProfileResponseImplCopyWith<_$EditProfileResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
