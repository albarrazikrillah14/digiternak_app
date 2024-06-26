// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ownership.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Ownership _$OwnershipFromJson(Map<String, dynamic> json) {
  return _Ownership.fromJson(json);
}

/// @nodoc
mixin _$Ownership {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OwnershipCopyWith<Ownership> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnershipCopyWith<$Res> {
  factory $OwnershipCopyWith(Ownership value, $Res Function(Ownership) then) =
      _$OwnershipCopyWithImpl<$Res, Ownership>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$OwnershipCopyWithImpl<$Res, $Val extends Ownership>
    implements $OwnershipCopyWith<$Res> {
  _$OwnershipCopyWithImpl(this._value, this._then);

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
abstract class _$$OwnershipImplCopyWith<$Res>
    implements $OwnershipCopyWith<$Res> {
  factory _$$OwnershipImplCopyWith(
          _$OwnershipImpl value, $Res Function(_$OwnershipImpl) then) =
      __$$OwnershipImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$OwnershipImplCopyWithImpl<$Res>
    extends _$OwnershipCopyWithImpl<$Res, _$OwnershipImpl>
    implements _$$OwnershipImplCopyWith<$Res> {
  __$$OwnershipImplCopyWithImpl(
      _$OwnershipImpl _value, $Res Function(_$OwnershipImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$OwnershipImpl(
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
class _$OwnershipImpl implements _Ownership {
  _$OwnershipImpl({required this.id, required this.name});

  factory _$OwnershipImpl.fromJson(Map<String, dynamic> json) =>
      _$$OwnershipImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'Ownership(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OwnershipImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OwnershipImplCopyWith<_$OwnershipImpl> get copyWith =>
      __$$OwnershipImplCopyWithImpl<_$OwnershipImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OwnershipImplToJson(
      this,
    );
  }
}

abstract class _Ownership implements Ownership {
  factory _Ownership({required final int id, required final String name}) =
      _$OwnershipImpl;

  factory _Ownership.fromJson(Map<String, dynamic> json) =
      _$OwnershipImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$OwnershipImplCopyWith<_$OwnershipImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
