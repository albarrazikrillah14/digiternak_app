// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_catatan_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AllCatatanResponse _$AllCatatanResponseFromJson(Map<String, dynamic> json) {
  return _AllCatatanResponse.fromJson(json);
}

/// @nodoc
mixin _$AllCatatanResponse {
  List<CatatanData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllCatatanResponseCopyWith<AllCatatanResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllCatatanResponseCopyWith<$Res> {
  factory $AllCatatanResponseCopyWith(
          AllCatatanResponse value, $Res Function(AllCatatanResponse) then) =
      _$AllCatatanResponseCopyWithImpl<$Res, AllCatatanResponse>;
  @useResult
  $Res call({List<CatatanData> data});
}

/// @nodoc
class _$AllCatatanResponseCopyWithImpl<$Res, $Val extends AllCatatanResponse>
    implements $AllCatatanResponseCopyWith<$Res> {
  _$AllCatatanResponseCopyWithImpl(this._value, this._then);

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
              as List<CatatanData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllCatatanResponseImplCopyWith<$Res>
    implements $AllCatatanResponseCopyWith<$Res> {
  factory _$$AllCatatanResponseImplCopyWith(_$AllCatatanResponseImpl value,
          $Res Function(_$AllCatatanResponseImpl) then) =
      __$$AllCatatanResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CatatanData> data});
}

/// @nodoc
class __$$AllCatatanResponseImplCopyWithImpl<$Res>
    extends _$AllCatatanResponseCopyWithImpl<$Res, _$AllCatatanResponseImpl>
    implements _$$AllCatatanResponseImplCopyWith<$Res> {
  __$$AllCatatanResponseImplCopyWithImpl(_$AllCatatanResponseImpl _value,
      $Res Function(_$AllCatatanResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$AllCatatanResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CatatanData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllCatatanResponseImpl implements _AllCatatanResponse {
  _$AllCatatanResponseImpl({required final List<CatatanData> data})
      : _data = data;

  factory _$AllCatatanResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllCatatanResponseImplFromJson(json);

  final List<CatatanData> _data;
  @override
  List<CatatanData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'AllCatatanResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllCatatanResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllCatatanResponseImplCopyWith<_$AllCatatanResponseImpl> get copyWith =>
      __$$AllCatatanResponseImplCopyWithImpl<_$AllCatatanResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllCatatanResponseImplToJson(
      this,
    );
  }
}

abstract class _AllCatatanResponse implements AllCatatanResponse {
  factory _AllCatatanResponse({required final List<CatatanData> data}) =
      _$AllCatatanResponseImpl;

  factory _AllCatatanResponse.fromJson(Map<String, dynamic> json) =
      _$AllCatatanResponseImpl.fromJson;

  @override
  List<CatatanData> get data;
  @override
  @JsonKey(ignore: true)
  _$$AllCatatanResponseImplCopyWith<_$AllCatatanResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
