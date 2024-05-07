// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'livestock_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LivestockData _$LivestockDataFromJson(Map<String, dynamic> json) {
  return _LivestockData.fromJson(json);
}

/// @nodoc
mixin _$LivestockData {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  String? get eid => throw _privateConstructorUsedError;
  String? get vid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get birthdate => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get age => throw _privateConstructorUsedError;
  @JsonKey(name: 'chest_size')
  String get chestSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'body_weight')
  String get bodyWeight => throw _privateConstructorUsedError;
  String get health => throw _privateConstructorUsedError;
  Cage get cage => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_of_livestock')
  TypeOfLivestock get typeOfLivestock => throw _privateConstructorUsedError;
  @JsonKey(name: 'breed_of_livestock')
  Breed get breedOfLivestock => throw _privateConstructorUsedError;
  @JsonKey(name: 'maintenance')
  Maintenance get typeOfCage => throw _privateConstructorUsedError;
  @JsonKey(name: 'source')
  Source get source => throw _privateConstructorUsedError;
  @JsonKey(name: 'ownership_status')
  Ownership get ownership => throw _privateConstructorUsedError;
  @JsonKey(name: 'reproduction')
  Reproduction get reproduction => throw _privateConstructorUsedError;
  @JsonKey(name: 'livestock_images')
  List<String>? get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LivestockDataCopyWith<LivestockData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LivestockDataCopyWith<$Res> {
  factory $LivestockDataCopyWith(
          LivestockData value, $Res Function(LivestockData) then) =
      _$LivestockDataCopyWithImpl<$Res, LivestockData>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      String? eid,
      String? vid,
      String name,
      String birthdate,
      String gender,
      String age,
      @JsonKey(name: 'chest_size') String chestSize,
      @JsonKey(name: 'body_weight') String bodyWeight,
      String health,
      Cage cage,
      @JsonKey(name: 'type_of_livestock') TypeOfLivestock typeOfLivestock,
      @JsonKey(name: 'breed_of_livestock') Breed breedOfLivestock,
      @JsonKey(name: 'maintenance') Maintenance typeOfCage,
      @JsonKey(name: 'source') Source source,
      @JsonKey(name: 'ownership_status') Ownership ownership,
      @JsonKey(name: 'reproduction') Reproduction reproduction,
      @JsonKey(name: 'livestock_images') List<String>? images});

  $CageCopyWith<$Res> get cage;
  $TypeOfLivestockCopyWith<$Res> get typeOfLivestock;
  $BreedCopyWith<$Res> get breedOfLivestock;
  $MaintenanceCopyWith<$Res> get typeOfCage;
  $SourceCopyWith<$Res> get source;
  $OwnershipCopyWith<$Res> get ownership;
  $ReproductionCopyWith<$Res> get reproduction;
}

/// @nodoc
class _$LivestockDataCopyWithImpl<$Res, $Val extends LivestockData>
    implements $LivestockDataCopyWith<$Res> {
  _$LivestockDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? eid = freezed,
    Object? vid = freezed,
    Object? name = null,
    Object? birthdate = null,
    Object? gender = null,
    Object? age = null,
    Object? chestSize = null,
    Object? bodyWeight = null,
    Object? health = null,
    Object? cage = null,
    Object? typeOfLivestock = null,
    Object? breedOfLivestock = null,
    Object? typeOfCage = null,
    Object? source = null,
    Object? ownership = null,
    Object? reproduction = null,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      eid: freezed == eid
          ? _value.eid
          : eid // ignore: cast_nullable_to_non_nullable
              as String?,
      vid: freezed == vid
          ? _value.vid
          : vid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birthdate: null == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
      chestSize: null == chestSize
          ? _value.chestSize
          : chestSize // ignore: cast_nullable_to_non_nullable
              as String,
      bodyWeight: null == bodyWeight
          ? _value.bodyWeight
          : bodyWeight // ignore: cast_nullable_to_non_nullable
              as String,
      health: null == health
          ? _value.health
          : health // ignore: cast_nullable_to_non_nullable
              as String,
      cage: null == cage
          ? _value.cage
          : cage // ignore: cast_nullable_to_non_nullable
              as Cage,
      typeOfLivestock: null == typeOfLivestock
          ? _value.typeOfLivestock
          : typeOfLivestock // ignore: cast_nullable_to_non_nullable
              as TypeOfLivestock,
      breedOfLivestock: null == breedOfLivestock
          ? _value.breedOfLivestock
          : breedOfLivestock // ignore: cast_nullable_to_non_nullable
              as Breed,
      typeOfCage: null == typeOfCage
          ? _value.typeOfCage
          : typeOfCage // ignore: cast_nullable_to_non_nullable
              as Maintenance,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as Source,
      ownership: null == ownership
          ? _value.ownership
          : ownership // ignore: cast_nullable_to_non_nullable
              as Ownership,
      reproduction: null == reproduction
          ? _value.reproduction
          : reproduction // ignore: cast_nullable_to_non_nullable
              as Reproduction,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CageCopyWith<$Res> get cage {
    return $CageCopyWith<$Res>(_value.cage, (value) {
      return _then(_value.copyWith(cage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TypeOfLivestockCopyWith<$Res> get typeOfLivestock {
    return $TypeOfLivestockCopyWith<$Res>(_value.typeOfLivestock, (value) {
      return _then(_value.copyWith(typeOfLivestock: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BreedCopyWith<$Res> get breedOfLivestock {
    return $BreedCopyWith<$Res>(_value.breedOfLivestock, (value) {
      return _then(_value.copyWith(breedOfLivestock: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MaintenanceCopyWith<$Res> get typeOfCage {
    return $MaintenanceCopyWith<$Res>(_value.typeOfCage, (value) {
      return _then(_value.copyWith(typeOfCage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SourceCopyWith<$Res> get source {
    return $SourceCopyWith<$Res>(_value.source, (value) {
      return _then(_value.copyWith(source: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OwnershipCopyWith<$Res> get ownership {
    return $OwnershipCopyWith<$Res>(_value.ownership, (value) {
      return _then(_value.copyWith(ownership: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReproductionCopyWith<$Res> get reproduction {
    return $ReproductionCopyWith<$Res>(_value.reproduction, (value) {
      return _then(_value.copyWith(reproduction: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LivestockDataImplCopyWith<$Res>
    implements $LivestockDataCopyWith<$Res> {
  factory _$$LivestockDataImplCopyWith(
          _$LivestockDataImpl value, $Res Function(_$LivestockDataImpl) then) =
      __$$LivestockDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      String? eid,
      String? vid,
      String name,
      String birthdate,
      String gender,
      String age,
      @JsonKey(name: 'chest_size') String chestSize,
      @JsonKey(name: 'body_weight') String bodyWeight,
      String health,
      Cage cage,
      @JsonKey(name: 'type_of_livestock') TypeOfLivestock typeOfLivestock,
      @JsonKey(name: 'breed_of_livestock') Breed breedOfLivestock,
      @JsonKey(name: 'maintenance') Maintenance typeOfCage,
      @JsonKey(name: 'source') Source source,
      @JsonKey(name: 'ownership_status') Ownership ownership,
      @JsonKey(name: 'reproduction') Reproduction reproduction,
      @JsonKey(name: 'livestock_images') List<String>? images});

  @override
  $CageCopyWith<$Res> get cage;
  @override
  $TypeOfLivestockCopyWith<$Res> get typeOfLivestock;
  @override
  $BreedCopyWith<$Res> get breedOfLivestock;
  @override
  $MaintenanceCopyWith<$Res> get typeOfCage;
  @override
  $SourceCopyWith<$Res> get source;
  @override
  $OwnershipCopyWith<$Res> get ownership;
  @override
  $ReproductionCopyWith<$Res> get reproduction;
}

/// @nodoc
class __$$LivestockDataImplCopyWithImpl<$Res>
    extends _$LivestockDataCopyWithImpl<$Res, _$LivestockDataImpl>
    implements _$$LivestockDataImplCopyWith<$Res> {
  __$$LivestockDataImplCopyWithImpl(
      _$LivestockDataImpl _value, $Res Function(_$LivestockDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? eid = freezed,
    Object? vid = freezed,
    Object? name = null,
    Object? birthdate = null,
    Object? gender = null,
    Object? age = null,
    Object? chestSize = null,
    Object? bodyWeight = null,
    Object? health = null,
    Object? cage = null,
    Object? typeOfLivestock = null,
    Object? breedOfLivestock = null,
    Object? typeOfCage = null,
    Object? source = null,
    Object? ownership = null,
    Object? reproduction = null,
    Object? images = freezed,
  }) {
    return _then(_$LivestockDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      eid: freezed == eid
          ? _value.eid
          : eid // ignore: cast_nullable_to_non_nullable
              as String?,
      vid: freezed == vid
          ? _value.vid
          : vid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birthdate: null == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
      chestSize: null == chestSize
          ? _value.chestSize
          : chestSize // ignore: cast_nullable_to_non_nullable
              as String,
      bodyWeight: null == bodyWeight
          ? _value.bodyWeight
          : bodyWeight // ignore: cast_nullable_to_non_nullable
              as String,
      health: null == health
          ? _value.health
          : health // ignore: cast_nullable_to_non_nullable
              as String,
      cage: null == cage
          ? _value.cage
          : cage // ignore: cast_nullable_to_non_nullable
              as Cage,
      typeOfLivestock: null == typeOfLivestock
          ? _value.typeOfLivestock
          : typeOfLivestock // ignore: cast_nullable_to_non_nullable
              as TypeOfLivestock,
      breedOfLivestock: null == breedOfLivestock
          ? _value.breedOfLivestock
          : breedOfLivestock // ignore: cast_nullable_to_non_nullable
              as Breed,
      typeOfCage: null == typeOfCage
          ? _value.typeOfCage
          : typeOfCage // ignore: cast_nullable_to_non_nullable
              as Maintenance,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as Source,
      ownership: null == ownership
          ? _value.ownership
          : ownership // ignore: cast_nullable_to_non_nullable
              as Ownership,
      reproduction: null == reproduction
          ? _value.reproduction
          : reproduction // ignore: cast_nullable_to_non_nullable
              as Reproduction,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LivestockDataImpl implements _LivestockData {
  _$LivestockDataImpl(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      required this.eid,
      required this.vid,
      required this.name,
      required this.birthdate,
      required this.gender,
      required this.age,
      @JsonKey(name: 'chest_size') required this.chestSize,
      @JsonKey(name: 'body_weight') required this.bodyWeight,
      required this.health,
      required this.cage,
      @JsonKey(name: 'type_of_livestock') required this.typeOfLivestock,
      @JsonKey(name: 'breed_of_livestock') required this.breedOfLivestock,
      @JsonKey(name: 'maintenance') required this.typeOfCage,
      @JsonKey(name: 'source') required this.source,
      @JsonKey(name: 'ownership_status') required this.ownership,
      @JsonKey(name: 'reproduction') required this.reproduction,
      @JsonKey(name: 'livestock_images') required final List<String>? images})
      : _images = images;

  factory _$LivestockDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LivestockDataImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  final String? eid;
  @override
  final String? vid;
  @override
  final String name;
  @override
  final String birthdate;
  @override
  final String gender;
  @override
  final String age;
  @override
  @JsonKey(name: 'chest_size')
  final String chestSize;
  @override
  @JsonKey(name: 'body_weight')
  final String bodyWeight;
  @override
  final String health;
  @override
  final Cage cage;
  @override
  @JsonKey(name: 'type_of_livestock')
  final TypeOfLivestock typeOfLivestock;
  @override
  @JsonKey(name: 'breed_of_livestock')
  final Breed breedOfLivestock;
  @override
  @JsonKey(name: 'maintenance')
  final Maintenance typeOfCage;
  @override
  @JsonKey(name: 'source')
  final Source source;
  @override
  @JsonKey(name: 'ownership_status')
  final Ownership ownership;
  @override
  @JsonKey(name: 'reproduction')
  final Reproduction reproduction;
  final List<String>? _images;
  @override
  @JsonKey(name: 'livestock_images')
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LivestockData(id: $id, userId: $userId, eid: $eid, vid: $vid, name: $name, birthdate: $birthdate, gender: $gender, age: $age, chestSize: $chestSize, bodyWeight: $bodyWeight, health: $health, cage: $cage, typeOfLivestock: $typeOfLivestock, breedOfLivestock: $breedOfLivestock, typeOfCage: $typeOfCage, source: $source, ownership: $ownership, reproduction: $reproduction, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LivestockDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.eid, eid) || other.eid == eid) &&
            (identical(other.vid, vid) || other.vid == vid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.chestSize, chestSize) ||
                other.chestSize == chestSize) &&
            (identical(other.bodyWeight, bodyWeight) ||
                other.bodyWeight == bodyWeight) &&
            (identical(other.health, health) || other.health == health) &&
            (identical(other.cage, cage) || other.cage == cage) &&
            (identical(other.typeOfLivestock, typeOfLivestock) ||
                other.typeOfLivestock == typeOfLivestock) &&
            (identical(other.breedOfLivestock, breedOfLivestock) ||
                other.breedOfLivestock == breedOfLivestock) &&
            (identical(other.typeOfCage, typeOfCage) ||
                other.typeOfCage == typeOfCage) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.ownership, ownership) ||
                other.ownership == ownership) &&
            (identical(other.reproduction, reproduction) ||
                other.reproduction == reproduction) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        userId,
        eid,
        vid,
        name,
        birthdate,
        gender,
        age,
        chestSize,
        bodyWeight,
        health,
        cage,
        typeOfLivestock,
        breedOfLivestock,
        typeOfCage,
        source,
        ownership,
        reproduction,
        const DeepCollectionEquality().hash(_images)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LivestockDataImplCopyWith<_$LivestockDataImpl> get copyWith =>
      __$$LivestockDataImplCopyWithImpl<_$LivestockDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LivestockDataImplToJson(
      this,
    );
  }
}

abstract class _LivestockData implements LivestockData {
  factory _LivestockData(
      {required final int id,
      @JsonKey(name: 'user_id') required final int userId,
      required final String? eid,
      required final String? vid,
      required final String name,
      required final String birthdate,
      required final String gender,
      required final String age,
      @JsonKey(name: 'chest_size') required final String chestSize,
      @JsonKey(name: 'body_weight') required final String bodyWeight,
      required final String health,
      required final Cage cage,
      @JsonKey(name: 'type_of_livestock')
      required final TypeOfLivestock typeOfLivestock,
      @JsonKey(name: 'breed_of_livestock')
      required final Breed breedOfLivestock,
      @JsonKey(name: 'maintenance') required final Maintenance typeOfCage,
      @JsonKey(name: 'source') required final Source source,
      @JsonKey(name: 'ownership_status') required final Ownership ownership,
      @JsonKey(name: 'reproduction') required final Reproduction reproduction,
      @JsonKey(name: 'livestock_images')
      required final List<String>? images}) = _$LivestockDataImpl;

  factory _LivestockData.fromJson(Map<String, dynamic> json) =
      _$LivestockDataImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  String? get eid;
  @override
  String? get vid;
  @override
  String get name;
  @override
  String get birthdate;
  @override
  String get gender;
  @override
  String get age;
  @override
  @JsonKey(name: 'chest_size')
  String get chestSize;
  @override
  @JsonKey(name: 'body_weight')
  String get bodyWeight;
  @override
  String get health;
  @override
  Cage get cage;
  @override
  @JsonKey(name: 'type_of_livestock')
  TypeOfLivestock get typeOfLivestock;
  @override
  @JsonKey(name: 'breed_of_livestock')
  Breed get breedOfLivestock;
  @override
  @JsonKey(name: 'maintenance')
  Maintenance get typeOfCage;
  @override
  @JsonKey(name: 'source')
  Source get source;
  @override
  @JsonKey(name: 'ownership_status')
  Ownership get ownership;
  @override
  @JsonKey(name: 'reproduction')
  Reproduction get reproduction;
  @override
  @JsonKey(name: 'livestock_images')
  List<String>? get images;
  @override
  @JsonKey(ignore: true)
  _$$LivestockDataImplCopyWith<_$LivestockDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
