// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catatan_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CatatanRequest _$CatatanRequestFromJson(Map<String, dynamic> json) {
  return _CatatanRequest.fromJson(json);
}

/// @nodoc
mixin _$CatatanRequest {
  @JsonKey(name: 'livestock_feed')
  String get feed => throw _privateConstructorUsedError;
  int get costs => throw _privateConstructorUsedError;
  String get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatatanRequestCopyWith<CatatanRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatatanRequestCopyWith<$Res> {
  factory $CatatanRequestCopyWith(
          CatatanRequest value, $Res Function(CatatanRequest) then) =
      _$CatatanRequestCopyWithImpl<$Res, CatatanRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'livestock_feed') String feed,
      int costs,
      String details});
}

/// @nodoc
class _$CatatanRequestCopyWithImpl<$Res, $Val extends CatatanRequest>
    implements $CatatanRequestCopyWith<$Res> {
  _$CatatanRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feed = null,
    Object? costs = null,
    Object? details = null,
  }) {
    return _then(_value.copyWith(
      feed: null == feed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as String,
      costs: null == costs
          ? _value.costs
          : costs // ignore: cast_nullable_to_non_nullable
              as int,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CatatanRequestImplCopyWith<$Res>
    implements $CatatanRequestCopyWith<$Res> {
  factory _$$CatatanRequestImplCopyWith(_$CatatanRequestImpl value,
          $Res Function(_$CatatanRequestImpl) then) =
      __$$CatatanRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'livestock_feed') String feed,
      int costs,
      String details});
}

/// @nodoc
class __$$CatatanRequestImplCopyWithImpl<$Res>
    extends _$CatatanRequestCopyWithImpl<$Res, _$CatatanRequestImpl>
    implements _$$CatatanRequestImplCopyWith<$Res> {
  __$$CatatanRequestImplCopyWithImpl(
      _$CatatanRequestImpl _value, $Res Function(_$CatatanRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feed = null,
    Object? costs = null,
    Object? details = null,
  }) {
    return _then(_$CatatanRequestImpl(
      feed: null == feed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as String,
      costs: null == costs
          ? _value.costs
          : costs // ignore: cast_nullable_to_non_nullable
              as int,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CatatanRequestImpl implements _CatatanRequest {
  _$CatatanRequestImpl(
      {@JsonKey(name: 'livestock_feed') required this.feed,
      required this.costs,
      required this.details});

  factory _$CatatanRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatatanRequestImplFromJson(json);

  @override
  @JsonKey(name: 'livestock_feed')
  final String feed;
  @override
  final int costs;
  @override
  final String details;

  @override
  String toString() {
    return 'CatatanRequest(feed: $feed, costs: $costs, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatatanRequestImpl &&
            (identical(other.feed, feed) || other.feed == feed) &&
            (identical(other.costs, costs) || other.costs == costs) &&
            (identical(other.details, details) || other.details == details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, feed, costs, details);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CatatanRequestImplCopyWith<_$CatatanRequestImpl> get copyWith =>
      __$$CatatanRequestImplCopyWithImpl<_$CatatanRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CatatanRequestImplToJson(
      this,
    );
  }
}

abstract class _CatatanRequest implements CatatanRequest {
  factory _CatatanRequest(
      {@JsonKey(name: 'livestock_feed') required final String feed,
      required final int costs,
      required final String details}) = _$CatatanRequestImpl;

  factory _CatatanRequest.fromJson(Map<String, dynamic> json) =
      _$CatatanRequestImpl.fromJson;

  @override
  @JsonKey(name: 'livestock_feed')
  String get feed;
  @override
  int get costs;
  @override
  String get details;
  @override
  @JsonKey(ignore: true)
  _$$CatatanRequestImplCopyWith<_$CatatanRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
