// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileRequest _$ProfileRequestFromJson(Map<String, dynamic> json) {
  return _ProfilRequest.fromJson(json);
}

/// @nodoc
mixin _$ProfileRequest {
  String get nik => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  String get birthdate => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender')
  String get gender => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileRequestCopyWith<ProfileRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileRequestCopyWith<$Res> {
  factory $ProfileRequestCopyWith(
          ProfileRequest value, $Res Function(ProfileRequest) then) =
      _$ProfileRequestCopyWithImpl<$Res, ProfileRequest>;
  @useResult
  $Res call(
      {String nik,
      @JsonKey(name: 'full_name') String fullName,
      String birthdate,
      @JsonKey(name: 'phone_number') String phoneNumber,
      @JsonKey(name: 'gender') String gender,
      String address});
}

/// @nodoc
class _$ProfileRequestCopyWithImpl<$Res, $Val extends ProfileRequest>
    implements $ProfileRequestCopyWith<$Res> {
  _$ProfileRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nik = null,
    Object? fullName = null,
    Object? birthdate = null,
    Object? phoneNumber = null,
    Object? gender = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      nik: null == nik
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      birthdate: null == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfilRequestImplCopyWith<$Res>
    implements $ProfileRequestCopyWith<$Res> {
  factory _$$ProfilRequestImplCopyWith(
          _$ProfilRequestImpl value, $Res Function(_$ProfilRequestImpl) then) =
      __$$ProfilRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String nik,
      @JsonKey(name: 'full_name') String fullName,
      String birthdate,
      @JsonKey(name: 'phone_number') String phoneNumber,
      @JsonKey(name: 'gender') String gender,
      String address});
}

/// @nodoc
class __$$ProfilRequestImplCopyWithImpl<$Res>
    extends _$ProfileRequestCopyWithImpl<$Res, _$ProfilRequestImpl>
    implements _$$ProfilRequestImplCopyWith<$Res> {
  __$$ProfilRequestImplCopyWithImpl(
      _$ProfilRequestImpl _value, $Res Function(_$ProfilRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nik = null,
    Object? fullName = null,
    Object? birthdate = null,
    Object? phoneNumber = null,
    Object? gender = null,
    Object? address = null,
  }) {
    return _then(_$ProfilRequestImpl(
      nik: null == nik
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      birthdate: null == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfilRequestImpl implements _ProfilRequest {
  _$ProfilRequestImpl(
      {required this.nik,
      @JsonKey(name: 'full_name') required this.fullName,
      required this.birthdate,
      @JsonKey(name: 'phone_number') required this.phoneNumber,
      @JsonKey(name: 'gender') required this.gender,
      required this.address});

  factory _$ProfilRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfilRequestImplFromJson(json);

  @override
  final String nik;
  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  final String birthdate;
  @override
  @JsonKey(name: 'phone_number')
  final String phoneNumber;
  @override
  @JsonKey(name: 'gender')
  final String gender;
  @override
  final String address;

  @override
  String toString() {
    return 'ProfileRequest(nik: $nik, fullName: $fullName, birthdate: $birthdate, phoneNumber: $phoneNumber, gender: $gender, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfilRequestImpl &&
            (identical(other.nik, nik) || other.nik == nik) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, nik, fullName, birthdate, phoneNumber, gender, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfilRequestImplCopyWith<_$ProfilRequestImpl> get copyWith =>
      __$$ProfilRequestImplCopyWithImpl<_$ProfilRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfilRequestImplToJson(
      this,
    );
  }
}

abstract class _ProfilRequest implements ProfileRequest {
  factory _ProfilRequest(
      {required final String nik,
      @JsonKey(name: 'full_name') required final String fullName,
      required final String birthdate,
      @JsonKey(name: 'phone_number') required final String phoneNumber,
      @JsonKey(name: 'gender') required final String gender,
      required final String address}) = _$ProfilRequestImpl;

  factory _ProfilRequest.fromJson(Map<String, dynamic> json) =
      _$ProfilRequestImpl.fromJson;

  @override
  String get nik;
  @override
  @JsonKey(name: 'full_name')
  String get fullName;
  @override
  String get birthdate;
  @override
  @JsonKey(name: 'phone_number')
  String get phoneNumber;
  @override
  @JsonKey(name: 'gender')
  String get gender;
  @override
  String get address;
  @override
  @JsonKey(ignore: true)
  _$$ProfilRequestImplCopyWith<_$ProfilRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
