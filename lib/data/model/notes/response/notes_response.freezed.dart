// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notes_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotesResponse _$NotesResponseFromJson(Map<String, dynamic> json) {
  return _NotesResponse.fromJson(json);
}

/// @nodoc
mixin _$NotesResponse {
  String? get name => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  bool? get error => throw _privateConstructorUsedError;
  List<NoteData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotesResponseCopyWith<NotesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesResponseCopyWith<$Res> {
  factory $NotesResponseCopyWith(
          NotesResponse value, $Res Function(NotesResponse) then) =
      _$NotesResponseCopyWithImpl<$Res, NotesResponse>;
  @useResult
  $Res call(
      {String? name,
      String? message,
      int? code,
      int? status,
      bool? error,
      List<NoteData>? data});
}

/// @nodoc
class _$NotesResponseCopyWithImpl<$Res, $Val extends NotesResponse>
    implements $NotesResponseCopyWith<$Res> {
  _$NotesResponseCopyWithImpl(this._value, this._then);

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
    Object? error = freezed,
    Object? data = freezed,
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
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NoteData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotesResponseImplCopyWith<$Res>
    implements $NotesResponseCopyWith<$Res> {
  factory _$$NotesResponseImplCopyWith(
          _$NotesResponseImpl value, $Res Function(_$NotesResponseImpl) then) =
      __$$NotesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? message,
      int? code,
      int? status,
      bool? error,
      List<NoteData>? data});
}

/// @nodoc
class __$$NotesResponseImplCopyWithImpl<$Res>
    extends _$NotesResponseCopyWithImpl<$Res, _$NotesResponseImpl>
    implements _$$NotesResponseImplCopyWith<$Res> {
  __$$NotesResponseImplCopyWithImpl(
      _$NotesResponseImpl _value, $Res Function(_$NotesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? status = freezed,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_$NotesResponseImpl(
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
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NoteData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotesResponseImpl implements _NotesResponse {
  _$NotesResponseImpl(
      {required this.name,
      required this.message,
      required this.code,
      required this.status,
      required this.error,
      required final List<NoteData>? data})
      : _data = data;

  factory _$NotesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotesResponseImplFromJson(json);

  @override
  final String? name;
  @override
  final String? message;
  @override
  final int? code;
  @override
  final int? status;
  @override
  final bool? error;
  final List<NoteData>? _data;
  @override
  List<NoteData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NotesResponse(name: $name, message: $message, code: $code, status: $status, error: $error, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotesResponseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, message, code, status,
      error, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotesResponseImplCopyWith<_$NotesResponseImpl> get copyWith =>
      __$$NotesResponseImplCopyWithImpl<_$NotesResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotesResponseImplToJson(
      this,
    );
  }
}

abstract class _NotesResponse implements NotesResponse {
  factory _NotesResponse(
      {required final String? name,
      required final String? message,
      required final int? code,
      required final int? status,
      required final bool? error,
      required final List<NoteData>? data}) = _$NotesResponseImpl;

  factory _NotesResponse.fromJson(Map<String, dynamic> json) =
      _$NotesResponseImpl.fromJson;

  @override
  String? get name;
  @override
  String? get message;
  @override
  int? get code;
  @override
  int? get status;
  @override
  bool? get error;
  @override
  List<NoteData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$NotesResponseImplCopyWith<_$NotesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
