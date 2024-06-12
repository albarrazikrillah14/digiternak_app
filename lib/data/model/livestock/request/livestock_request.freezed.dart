// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'livestock_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LivestockRequest _$LivestockRequestFromJson(Map<String, dynamic> json) {
  return _LivestockRequest.fromJson(json);
}

/// @nodoc
mixin _$LivestockRequest {
  String get name => throw _privateConstructorUsedError;
  String get birthdate => throw _privateConstructorUsedError;
  @JsonKey(name: 'cage_id')
  int get cageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_of_livestock')
  String get typeOfLivestock => throw _privateConstructorUsedError;
  @JsonKey(name: 'breed_of_livestock')
  String get breedOfLivestock => throw _privateConstructorUsedError;
  String get purpose => throw _privateConstructorUsedError;
  @JsonKey(name: 'maintenance')
  String get maintenance => throw _privateConstructorUsedError;
  @JsonKey(name: 'source')
  String get source => throw _privateConstructorUsedError;
  @JsonKey(name: 'ownership_status')
  String get ownershipStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'reproduction')
  String get reproduction => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  @JsonKey(name: 'chest_size')
  int get chestSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'body_weight')
  int get bodyWeight => throw _privateConstructorUsedError;
  String get health => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LivestockRequestCopyWith<LivestockRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LivestockRequestCopyWith<$Res> {
  factory $LivestockRequestCopyWith(
          LivestockRequest value, $Res Function(LivestockRequest) then) =
      _$LivestockRequestCopyWithImpl<$Res, LivestockRequest>;
  @useResult
  $Res call(
      {String name,
      String birthdate,
      @JsonKey(name: 'cage_id') int cageId,
      @JsonKey(name: 'type_of_livestock') String typeOfLivestock,
      @JsonKey(name: 'breed_of_livestock') String breedOfLivestock,
      String purpose,
      @JsonKey(name: 'maintenance') String maintenance,
      @JsonKey(name: 'source') String source,
      @JsonKey(name: 'ownership_status') String ownershipStatus,
      @JsonKey(name: 'reproduction') String reproduction,
      String gender,
      int age,
      @JsonKey(name: 'chest_size') int chestSize,
      @JsonKey(name: 'body_weight') int bodyWeight,
      String health});
}

/// @nodoc
class _$LivestockRequestCopyWithImpl<$Res, $Val extends LivestockRequest>
    implements $LivestockRequestCopyWith<$Res> {
  _$LivestockRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? birthdate = null,
    Object? cageId = null,
    Object? typeOfLivestock = null,
    Object? breedOfLivestock = null,
    Object? purpose = null,
    Object? maintenance = null,
    Object? source = null,
    Object? ownershipStatus = null,
    Object? reproduction = null,
    Object? gender = null,
    Object? age = null,
    Object? chestSize = null,
    Object? bodyWeight = null,
    Object? health = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birthdate: null == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String,
      cageId: null == cageId
          ? _value.cageId
          : cageId // ignore: cast_nullable_to_non_nullable
              as int,
      typeOfLivestock: null == typeOfLivestock
          ? _value.typeOfLivestock
          : typeOfLivestock // ignore: cast_nullable_to_non_nullable
              as String,
      breedOfLivestock: null == breedOfLivestock
          ? _value.breedOfLivestock
          : breedOfLivestock // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String,
      maintenance: null == maintenance
          ? _value.maintenance
          : maintenance // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      ownershipStatus: null == ownershipStatus
          ? _value.ownershipStatus
          : ownershipStatus // ignore: cast_nullable_to_non_nullable
              as String,
      reproduction: null == reproduction
          ? _value.reproduction
          : reproduction // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      chestSize: null == chestSize
          ? _value.chestSize
          : chestSize // ignore: cast_nullable_to_non_nullable
              as int,
      bodyWeight: null == bodyWeight
          ? _value.bodyWeight
          : bodyWeight // ignore: cast_nullable_to_non_nullable
              as int,
      health: null == health
          ? _value.health
          : health // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LivestockRequestImplCopyWith<$Res>
    implements $LivestockRequestCopyWith<$Res> {
  factory _$$LivestockRequestImplCopyWith(_$LivestockRequestImpl value,
          $Res Function(_$LivestockRequestImpl) then) =
      __$$LivestockRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String birthdate,
      @JsonKey(name: 'cage_id') int cageId,
      @JsonKey(name: 'type_of_livestock') String typeOfLivestock,
      @JsonKey(name: 'breed_of_livestock') String breedOfLivestock,
      String purpose,
      @JsonKey(name: 'maintenance') String maintenance,
      @JsonKey(name: 'source') String source,
      @JsonKey(name: 'ownership_status') String ownershipStatus,
      @JsonKey(name: 'reproduction') String reproduction,
      String gender,
      int age,
      @JsonKey(name: 'chest_size') int chestSize,
      @JsonKey(name: 'body_weight') int bodyWeight,
      String health});
}

/// @nodoc
class __$$LivestockRequestImplCopyWithImpl<$Res>
    extends _$LivestockRequestCopyWithImpl<$Res, _$LivestockRequestImpl>
    implements _$$LivestockRequestImplCopyWith<$Res> {
  __$$LivestockRequestImplCopyWithImpl(_$LivestockRequestImpl _value,
      $Res Function(_$LivestockRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? birthdate = null,
    Object? cageId = null,
    Object? typeOfLivestock = null,
    Object? breedOfLivestock = null,
    Object? purpose = null,
    Object? maintenance = null,
    Object? source = null,
    Object? ownershipStatus = null,
    Object? reproduction = null,
    Object? gender = null,
    Object? age = null,
    Object? chestSize = null,
    Object? bodyWeight = null,
    Object? health = null,
  }) {
    return _then(_$LivestockRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birthdate: null == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String,
      cageId: null == cageId
          ? _value.cageId
          : cageId // ignore: cast_nullable_to_non_nullable
              as int,
      typeOfLivestock: null == typeOfLivestock
          ? _value.typeOfLivestock
          : typeOfLivestock // ignore: cast_nullable_to_non_nullable
              as String,
      breedOfLivestock: null == breedOfLivestock
          ? _value.breedOfLivestock
          : breedOfLivestock // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String,
      maintenance: null == maintenance
          ? _value.maintenance
          : maintenance // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      ownershipStatus: null == ownershipStatus
          ? _value.ownershipStatus
          : ownershipStatus // ignore: cast_nullable_to_non_nullable
              as String,
      reproduction: null == reproduction
          ? _value.reproduction
          : reproduction // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      chestSize: null == chestSize
          ? _value.chestSize
          : chestSize // ignore: cast_nullable_to_non_nullable
              as int,
      bodyWeight: null == bodyWeight
          ? _value.bodyWeight
          : bodyWeight // ignore: cast_nullable_to_non_nullable
              as int,
      health: null == health
          ? _value.health
          : health // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LivestockRequestImpl implements _LivestockRequest {
  _$LivestockRequestImpl(
      {required this.name,
      required this.birthdate,
      @JsonKey(name: 'cage_id') required this.cageId,
      @JsonKey(name: 'type_of_livestock') required this.typeOfLivestock,
      @JsonKey(name: 'breed_of_livestock') required this.breedOfLivestock,
      required this.purpose,
      @JsonKey(name: 'maintenance') required this.maintenance,
      @JsonKey(name: 'source') required this.source,
      @JsonKey(name: 'ownership_status') required this.ownershipStatus,
      @JsonKey(name: 'reproduction') required this.reproduction,
      required this.gender,
      required this.age,
      @JsonKey(name: 'chest_size') required this.chestSize,
      @JsonKey(name: 'body_weight') required this.bodyWeight,
      required this.health});

  factory _$LivestockRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$LivestockRequestImplFromJson(json);

  @override
  final String name;
  @override
  final String birthdate;
  @override
  @JsonKey(name: 'cage_id')
  final int cageId;
  @override
  @JsonKey(name: 'type_of_livestock')
  final String typeOfLivestock;
  @override
  @JsonKey(name: 'breed_of_livestock')
  final String breedOfLivestock;
  @override
  final String purpose;
  @override
  @JsonKey(name: 'maintenance')
  final String maintenance;
  @override
  @JsonKey(name: 'source')
  final String source;
  @override
  @JsonKey(name: 'ownership_status')
  final String ownershipStatus;
  @override
  @JsonKey(name: 'reproduction')
  final String reproduction;
  @override
  final String gender;
  @override
  final int age;
  @override
  @JsonKey(name: 'chest_size')
  final int chestSize;
  @override
  @JsonKey(name: 'body_weight')
  final int bodyWeight;
  @override
  final String health;

  @override
  String toString() {
    return 'LivestockRequest(name: $name, birthdate: $birthdate, cageId: $cageId, typeOfLivestock: $typeOfLivestock, breedOfLivestock: $breedOfLivestock, purpose: $purpose, maintenance: $maintenance, source: $source, ownershipStatus: $ownershipStatus, reproduction: $reproduction, gender: $gender, age: $age, chestSize: $chestSize, bodyWeight: $bodyWeight, health: $health)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LivestockRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.cageId, cageId) || other.cageId == cageId) &&
            (identical(other.typeOfLivestock, typeOfLivestock) ||
                other.typeOfLivestock == typeOfLivestock) &&
            (identical(other.breedOfLivestock, breedOfLivestock) ||
                other.breedOfLivestock == breedOfLivestock) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.maintenance, maintenance) ||
                other.maintenance == maintenance) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.ownershipStatus, ownershipStatus) ||
                other.ownershipStatus == ownershipStatus) &&
            (identical(other.reproduction, reproduction) ||
                other.reproduction == reproduction) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.chestSize, chestSize) ||
                other.chestSize == chestSize) &&
            (identical(other.bodyWeight, bodyWeight) ||
                other.bodyWeight == bodyWeight) &&
            (identical(other.health, health) || other.health == health));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      birthdate,
      cageId,
      typeOfLivestock,
      breedOfLivestock,
      purpose,
      maintenance,
      source,
      ownershipStatus,
      reproduction,
      gender,
      age,
      chestSize,
      bodyWeight,
      health);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LivestockRequestImplCopyWith<_$LivestockRequestImpl> get copyWith =>
      __$$LivestockRequestImplCopyWithImpl<_$LivestockRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LivestockRequestImplToJson(
      this,
    );
  }
}

abstract class _LivestockRequest implements LivestockRequest {
  factory _LivestockRequest(
      {required final String name,
      required final String birthdate,
      @JsonKey(name: 'cage_id') required final int cageId,
      @JsonKey(name: 'type_of_livestock') required final String typeOfLivestock,
      @JsonKey(name: 'breed_of_livestock')
      required final String breedOfLivestock,
      required final String purpose,
      @JsonKey(name: 'maintenance') required final String maintenance,
      @JsonKey(name: 'source') required final String source,
      @JsonKey(name: 'ownership_status') required final String ownershipStatus,
      @JsonKey(name: 'reproduction') required final String reproduction,
      required final String gender,
      required final int age,
      @JsonKey(name: 'chest_size') required final int chestSize,
      @JsonKey(name: 'body_weight') required final int bodyWeight,
      required final String health}) = _$LivestockRequestImpl;

  factory _LivestockRequest.fromJson(Map<String, dynamic> json) =
      _$LivestockRequestImpl.fromJson;

  @override
  String get name;
  @override
  String get birthdate;
  @override
  @JsonKey(name: 'cage_id')
  int get cageId;
  @override
  @JsonKey(name: 'type_of_livestock')
  String get typeOfLivestock;
  @override
  @JsonKey(name: 'breed_of_livestock')
  String get breedOfLivestock;
  @override
  String get purpose;
  @override
  @JsonKey(name: 'maintenance')
  String get maintenance;
  @override
  @JsonKey(name: 'source')
  String get source;
  @override
  @JsonKey(name: 'ownership_status')
  String get ownershipStatus;
  @override
  @JsonKey(name: 'reproduction')
  String get reproduction;
  @override
  String get gender;
  @override
  int get age;
  @override
  @JsonKey(name: 'chest_size')
  int get chestSize;
  @override
  @JsonKey(name: 'body_weight')
  int get bodyWeight;
  @override
  String get health;
  @override
  @JsonKey(ignore: true)
  _$$LivestockRequestImplCopyWith<_$LivestockRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
