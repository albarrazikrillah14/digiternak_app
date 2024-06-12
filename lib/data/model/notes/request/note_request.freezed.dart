// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NoteRequest _$NoteRequestFromJson(Map<String, dynamic> json) {
  return _NoteRequest.fromJson(json);
}

/// @nodoc
mixin _$NoteRequest {
  @JsonKey(name: 'livestock_feed')
  String get feed => throw _privateConstructorUsedError;
  @JsonKey(name: 'feed_weight')
  int get feedWeight => throw _privateConstructorUsedError;
  String get vitamin => throw _privateConstructorUsedError;
  int get costs => throw _privateConstructorUsedError;
  String get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteRequestCopyWith<NoteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteRequestCopyWith<$Res> {
  factory $NoteRequestCopyWith(
          NoteRequest value, $Res Function(NoteRequest) then) =
      _$NoteRequestCopyWithImpl<$Res, NoteRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'livestock_feed') String feed,
      @JsonKey(name: 'feed_weight') int feedWeight,
      String vitamin,
      int costs,
      String details});
}

/// @nodoc
class _$NoteRequestCopyWithImpl<$Res, $Val extends NoteRequest>
    implements $NoteRequestCopyWith<$Res> {
  _$NoteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feed = null,
    Object? feedWeight = null,
    Object? vitamin = null,
    Object? costs = null,
    Object? details = null,
  }) {
    return _then(_value.copyWith(
      feed: null == feed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as String,
      feedWeight: null == feedWeight
          ? _value.feedWeight
          : feedWeight // ignore: cast_nullable_to_non_nullable
              as int,
      vitamin: null == vitamin
          ? _value.vitamin
          : vitamin // ignore: cast_nullable_to_non_nullable
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
abstract class _$$NoteRequestImplCopyWith<$Res>
    implements $NoteRequestCopyWith<$Res> {
  factory _$$NoteRequestImplCopyWith(
          _$NoteRequestImpl value, $Res Function(_$NoteRequestImpl) then) =
      __$$NoteRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'livestock_feed') String feed,
      @JsonKey(name: 'feed_weight') int feedWeight,
      String vitamin,
      int costs,
      String details});
}

/// @nodoc
class __$$NoteRequestImplCopyWithImpl<$Res>
    extends _$NoteRequestCopyWithImpl<$Res, _$NoteRequestImpl>
    implements _$$NoteRequestImplCopyWith<$Res> {
  __$$NoteRequestImplCopyWithImpl(
      _$NoteRequestImpl _value, $Res Function(_$NoteRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feed = null,
    Object? feedWeight = null,
    Object? vitamin = null,
    Object? costs = null,
    Object? details = null,
  }) {
    return _then(_$NoteRequestImpl(
      feed: null == feed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as String,
      feedWeight: null == feedWeight
          ? _value.feedWeight
          : feedWeight // ignore: cast_nullable_to_non_nullable
              as int,
      vitamin: null == vitamin
          ? _value.vitamin
          : vitamin // ignore: cast_nullable_to_non_nullable
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
class _$NoteRequestImpl implements _NoteRequest {
  _$NoteRequestImpl(
      {@JsonKey(name: 'livestock_feed') required this.feed,
      @JsonKey(name: 'feed_weight') required this.feedWeight,
      required this.vitamin,
      required this.costs,
      required this.details});

  factory _$NoteRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoteRequestImplFromJson(json);

  @override
  @JsonKey(name: 'livestock_feed')
  final String feed;
  @override
  @JsonKey(name: 'feed_weight')
  final int feedWeight;
  @override
  final String vitamin;
  @override
  final int costs;
  @override
  final String details;

  @override
  String toString() {
    return 'NoteRequest(feed: $feed, feedWeight: $feedWeight, vitamin: $vitamin, costs: $costs, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteRequestImpl &&
            (identical(other.feed, feed) || other.feed == feed) &&
            (identical(other.feedWeight, feedWeight) ||
                other.feedWeight == feedWeight) &&
            (identical(other.vitamin, vitamin) || other.vitamin == vitamin) &&
            (identical(other.costs, costs) || other.costs == costs) &&
            (identical(other.details, details) || other.details == details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, feed, feedWeight, vitamin, costs, details);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteRequestImplCopyWith<_$NoteRequestImpl> get copyWith =>
      __$$NoteRequestImplCopyWithImpl<_$NoteRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoteRequestImplToJson(
      this,
    );
  }
}

abstract class _NoteRequest implements NoteRequest {
  factory _NoteRequest(
      {@JsonKey(name: 'livestock_feed') required final String feed,
      @JsonKey(name: 'feed_weight') required final int feedWeight,
      required final String vitamin,
      required final int costs,
      required final String details}) = _$NoteRequestImpl;

  factory _NoteRequest.fromJson(Map<String, dynamic> json) =
      _$NoteRequestImpl.fromJson;

  @override
  @JsonKey(name: 'livestock_feed')
  String get feed;
  @override
  @JsonKey(name: 'feed_weight')
  int get feedWeight;
  @override
  String get vitamin;
  @override
  int get costs;
  @override
  String get details;
  @override
  @JsonKey(ignore: true)
  _$$NoteRequestImplCopyWith<_$NoteRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
