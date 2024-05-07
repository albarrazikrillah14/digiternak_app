// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kandang_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KandangResponse _$KandangResponseFromJson(Map<String, dynamic> json) {
  return _KandangResponse.fromJson(json);
}

/// @nodoc
mixin _$KandangResponse {
  List<KandangResult> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KandangResponseCopyWith<KandangResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KandangResponseCopyWith<$Res> {
  factory $KandangResponseCopyWith(
          KandangResponse value, $Res Function(KandangResponse) then) =
      _$KandangResponseCopyWithImpl<$Res, KandangResponse>;
  @useResult
  $Res call({List<KandangResult> data});
}

/// @nodoc
class _$KandangResponseCopyWithImpl<$Res, $Val extends KandangResponse>
    implements $KandangResponseCopyWith<$Res> {
  _$KandangResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<KandangResult>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KandangResponseImplCopyWith<$Res>
    implements $KandangResponseCopyWith<$Res> {
  factory _$$KandangResponseImplCopyWith(_$KandangResponseImpl value,
          $Res Function(_$KandangResponseImpl) then) =
      __$$KandangResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<KandangResult> data});
}

/// @nodoc
class __$$KandangResponseImplCopyWithImpl<$Res>
    extends _$KandangResponseCopyWithImpl<$Res, _$KandangResponseImpl>
    implements _$$KandangResponseImplCopyWith<$Res> {
  __$$KandangResponseImplCopyWithImpl(
      _$KandangResponseImpl _value, $Res Function(_$KandangResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$KandangResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<KandangResult>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KandangResponseImpl implements _KandangResponse {
  _$KandangResponseImpl({required final List<KandangResult> data})
      : _data = data;

  factory _$KandangResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$KandangResponseImplFromJson(json);

  final List<KandangResult> _data;
  @override
  List<KandangResult> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'KandangResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KandangResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KandangResponseImplCopyWith<_$KandangResponseImpl> get copyWith =>
      __$$KandangResponseImplCopyWithImpl<_$KandangResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KandangResponseImplToJson(
      this,
    );
  }
}

abstract class _KandangResponse implements KandangResponse {
  factory _KandangResponse({required final List<KandangResult> data}) =
      _$KandangResponseImpl;

  factory _KandangResponse.fromJson(Map<String, dynamic> json) =
      _$KandangResponseImpl.fromJson;

  @override
  List<KandangResult> get data;
  @override
  @JsonKey(ignore: true)
  _$$KandangResponseImplCopyWith<_$KandangResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
