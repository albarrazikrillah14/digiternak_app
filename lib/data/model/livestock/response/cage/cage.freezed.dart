// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Cage _$CageFromJson(Map<String, dynamic> json) {
  return _Cage.fromJson(json);
}

/// @nodoc
mixin _$Cage {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CageCopyWith<Cage> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CageCopyWith<$Res> {
  factory $CageCopyWith(Cage value, $Res Function(Cage) then) =
      _$CageCopyWithImpl<$Res, Cage>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$CageCopyWithImpl<$Res, $Val extends Cage>
    implements $CageCopyWith<$Res> {
  _$CageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CageImplCopyWith<$Res> implements $CageCopyWith<$Res> {
  factory _$$CageImplCopyWith(
          _$CageImpl value, $Res Function(_$CageImpl) then) =
      __$$CageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$CageImplCopyWithImpl<$Res>
    extends _$CageCopyWithImpl<$Res, _$CageImpl>
    implements _$$CageImplCopyWith<$Res> {
  __$$CageImplCopyWithImpl(_$CageImpl _value, $Res Function(_$CageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$CageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CageImpl implements _Cage {
  _$CageImpl({required this.id, required this.name});

  factory _$CageImpl.fromJson(Map<String, dynamic> json) =>
      _$$CageImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'Cage(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CageImplCopyWith<_$CageImpl> get copyWith =>
      __$$CageImplCopyWithImpl<_$CageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CageImplToJson(
      this,
    );
  }
}

abstract class _Cage implements Cage {
  factory _Cage({required final int id, required final String name}) =
      _$CageImpl;

  factory _Cage.fromJson(Map<String, dynamic> json) = _$CageImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$CageImplCopyWith<_$CageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
