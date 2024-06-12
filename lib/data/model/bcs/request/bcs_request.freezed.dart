// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bcs_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BcsRequest _$BcsRequestFromJson(Map<String, dynamic> json) {
  return _BcsRequest.fromJson(json);
}

/// @nodoc
mixin _$BcsRequest {
  @JsonKey(name: 'body_weight')
  int get bodyWeight => throw _privateConstructorUsedError;
  @JsonKey(name: 'chest_size')
  int get chestSize => throw _privateConstructorUsedError;
  int get hips => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BcsRequestCopyWith<BcsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BcsRequestCopyWith<$Res> {
  factory $BcsRequestCopyWith(
          BcsRequest value, $Res Function(BcsRequest) then) =
      _$BcsRequestCopyWithImpl<$Res, BcsRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'body_weight') int bodyWeight,
      @JsonKey(name: 'chest_size') int chestSize,
      int hips});
}

/// @nodoc
class _$BcsRequestCopyWithImpl<$Res, $Val extends BcsRequest>
    implements $BcsRequestCopyWith<$Res> {
  _$BcsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bodyWeight = null,
    Object? chestSize = null,
    Object? hips = null,
  }) {
    return _then(_value.copyWith(
      bodyWeight: null == bodyWeight
          ? _value.bodyWeight
          : bodyWeight // ignore: cast_nullable_to_non_nullable
              as int,
      chestSize: null == chestSize
          ? _value.chestSize
          : chestSize // ignore: cast_nullable_to_non_nullable
              as int,
      hips: null == hips
          ? _value.hips
          : hips // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BcsRequestImplCopyWith<$Res>
    implements $BcsRequestCopyWith<$Res> {
  factory _$$BcsRequestImplCopyWith(
          _$BcsRequestImpl value, $Res Function(_$BcsRequestImpl) then) =
      __$$BcsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'body_weight') int bodyWeight,
      @JsonKey(name: 'chest_size') int chestSize,
      int hips});
}

/// @nodoc
class __$$BcsRequestImplCopyWithImpl<$Res>
    extends _$BcsRequestCopyWithImpl<$Res, _$BcsRequestImpl>
    implements _$$BcsRequestImplCopyWith<$Res> {
  __$$BcsRequestImplCopyWithImpl(
      _$BcsRequestImpl _value, $Res Function(_$BcsRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bodyWeight = null,
    Object? chestSize = null,
    Object? hips = null,
  }) {
    return _then(_$BcsRequestImpl(
      bodyWeight: null == bodyWeight
          ? _value.bodyWeight
          : bodyWeight // ignore: cast_nullable_to_non_nullable
              as int,
      chestSize: null == chestSize
          ? _value.chestSize
          : chestSize // ignore: cast_nullable_to_non_nullable
              as int,
      hips: null == hips
          ? _value.hips
          : hips // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BcsRequestImpl implements _BcsRequest {
  _$BcsRequestImpl(
      {@JsonKey(name: 'body_weight') required this.bodyWeight,
      @JsonKey(name: 'chest_size') required this.chestSize,
      required this.hips});

  factory _$BcsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$BcsRequestImplFromJson(json);

  @override
  @JsonKey(name: 'body_weight')
  final int bodyWeight;
  @override
  @JsonKey(name: 'chest_size')
  final int chestSize;
  @override
  final int hips;

  @override
  String toString() {
    return 'BcsRequest(bodyWeight: $bodyWeight, chestSize: $chestSize, hips: $hips)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BcsRequestImpl &&
            (identical(other.bodyWeight, bodyWeight) ||
                other.bodyWeight == bodyWeight) &&
            (identical(other.chestSize, chestSize) ||
                other.chestSize == chestSize) &&
            (identical(other.hips, hips) || other.hips == hips));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, bodyWeight, chestSize, hips);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BcsRequestImplCopyWith<_$BcsRequestImpl> get copyWith =>
      __$$BcsRequestImplCopyWithImpl<_$BcsRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BcsRequestImplToJson(
      this,
    );
  }
}

abstract class _BcsRequest implements BcsRequest {
  factory _BcsRequest(
      {@JsonKey(name: 'body_weight') required final int bodyWeight,
      @JsonKey(name: 'chest_size') required final int chestSize,
      required final int hips}) = _$BcsRequestImpl;

  factory _BcsRequest.fromJson(Map<String, dynamic> json) =
      _$BcsRequestImpl.fromJson;

  @override
  @JsonKey(name: 'body_weight')
  int get bodyWeight;
  @override
  @JsonKey(name: 'chest_size')
  int get chestSize;
  @override
  int get hips;
  @override
  @JsonKey(ignore: true)
  _$$BcsRequestImplCopyWith<_$BcsRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
