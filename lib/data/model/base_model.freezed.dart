// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseModel _$BaseModelFromJson(Map<String, dynamic> json) {
  return _BaseModel.fromJson(json);
}

/// @nodoc
mixin _$BaseModel {
  String? get name => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseModelCopyWith<BaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseModelCopyWith<$Res> {
  factory $BaseModelCopyWith(BaseModel value, $Res Function(BaseModel) then) =
      _$BaseModelCopyWithImpl<$Res, BaseModel>;
  @useResult
  $Res call(
      {String? name, String? message, int? code, int? status, bool error});
}

/// @nodoc
class _$BaseModelCopyWithImpl<$Res, $Val extends BaseModel>
    implements $BaseModelCopyWith<$Res> {
  _$BaseModelCopyWithImpl(this._value, this._then);

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
    Object? error = null,
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
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseModelImplCopyWith<$Res>
    implements $BaseModelCopyWith<$Res> {
  factory _$$BaseModelImplCopyWith(
          _$BaseModelImpl value, $Res Function(_$BaseModelImpl) then) =
      __$$BaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name, String? message, int? code, int? status, bool error});
}

/// @nodoc
class __$$BaseModelImplCopyWithImpl<$Res>
    extends _$BaseModelCopyWithImpl<$Res, _$BaseModelImpl>
    implements _$$BaseModelImplCopyWith<$Res> {
  __$$BaseModelImplCopyWithImpl(
      _$BaseModelImpl _value, $Res Function(_$BaseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? status = freezed,
    Object? error = null,
  }) {
    return _then(_$BaseModelImpl(
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
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseModelImpl implements _BaseModel {
  _$BaseModelImpl(
      {required this.name,
      required this.message,
      required this.code,
      required this.status,
      required this.error});

  factory _$BaseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseModelImplFromJson(json);

  @override
  final String? name;
  @override
  final String? message;
  @override
  final int? code;
  @override
  final int? status;
  @override
  final bool error;

  @override
  String toString() {
    return 'BaseModel(name: $name, message: $message, code: $code, status: $status, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, message, code, status, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseModelImplCopyWith<_$BaseModelImpl> get copyWith =>
      __$$BaseModelImplCopyWithImpl<_$BaseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseModelImplToJson(
      this,
    );
  }
}

abstract class _BaseModel implements BaseModel {
  factory _BaseModel(
      {required final String? name,
      required final String? message,
      required final int? code,
      required final int? status,
      required final bool error}) = _$BaseModelImpl;

  factory _BaseModel.fromJson(Map<String, dynamic> json) =
      _$BaseModelImpl.fromJson;

  @override
  String? get name;
  @override
  String? get message;
  @override
  int? get code;
  @override
  int? get status;
  @override
  bool get error;
  @override
  @JsonKey(ignore: true)
  _$$BaseModelImplCopyWith<_$BaseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
