// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileResponse _$ProfileResponseFromJson(Map<String, dynamic> json) {
  return _ProfileResponse.fromJson(json);
}

/// @nodoc
mixin _$ProfileResponse {
  String? get name => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender_id')
  int? get gender => throw _privateConstructorUsedError;
  String? get nik => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String? get fullName => throw _privateConstructorUsedError;
  String? get birthdate => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_completed')
  bool? get isCompleted => throw _privateConstructorUsedError;
  RegisterRole? get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileResponseCopyWith<ProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileResponseCopyWith<$Res> {
  factory $ProfileResponseCopyWith(
          ProfileResponse value, $Res Function(ProfileResponse) then) =
      _$ProfileResponseCopyWithImpl<$Res, ProfileResponse>;
  @useResult
  $Res call(
      {String? name,
      String? message,
      int? code,
      int? status,
      int? id,
      String? username,
      String? email,
      @JsonKey(name: 'gender_id') int? gender,
      String? nik,
      @JsonKey(name: 'full_name') String? fullName,
      String? birthdate,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      String? address,
      @JsonKey(name: 'is_completed') bool? isCompleted,
      RegisterRole? role});

  $RegisterRoleCopyWith<$Res>? get role;
}

/// @nodoc
class _$ProfileResponseCopyWithImpl<$Res, $Val extends ProfileResponse>
    implements $ProfileResponseCopyWith<$Res> {
  _$ProfileResponseCopyWithImpl(this._value, this._then);

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
    Object? id = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? gender = freezed,
    Object? nik = freezed,
    Object? fullName = freezed,
    Object? birthdate = freezed,
    Object? phoneNumber = freezed,
    Object? address = freezed,
    Object? isCompleted = freezed,
    Object? role = freezed,
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      nik: freezed == nik
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as RegisterRole?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RegisterRoleCopyWith<$Res>? get role {
    if (_value.role == null) {
      return null;
    }

    return $RegisterRoleCopyWith<$Res>(_value.role!, (value) {
      return _then(_value.copyWith(role: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileResponseImplCopyWith<$Res>
    implements $ProfileResponseCopyWith<$Res> {
  factory _$$ProfileResponseImplCopyWith(_$ProfileResponseImpl value,
          $Res Function(_$ProfileResponseImpl) then) =
      __$$ProfileResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? message,
      int? code,
      int? status,
      int? id,
      String? username,
      String? email,
      @JsonKey(name: 'gender_id') int? gender,
      String? nik,
      @JsonKey(name: 'full_name') String? fullName,
      String? birthdate,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      String? address,
      @JsonKey(name: 'is_completed') bool? isCompleted,
      RegisterRole? role});

  @override
  $RegisterRoleCopyWith<$Res>? get role;
}

/// @nodoc
class __$$ProfileResponseImplCopyWithImpl<$Res>
    extends _$ProfileResponseCopyWithImpl<$Res, _$ProfileResponseImpl>
    implements _$$ProfileResponseImplCopyWith<$Res> {
  __$$ProfileResponseImplCopyWithImpl(
      _$ProfileResponseImpl _value, $Res Function(_$ProfileResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? status = freezed,
    Object? id = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? gender = freezed,
    Object? nik = freezed,
    Object? fullName = freezed,
    Object? birthdate = freezed,
    Object? phoneNumber = freezed,
    Object? address = freezed,
    Object? isCompleted = freezed,
    Object? role = freezed,
  }) {
    return _then(_$ProfileResponseImpl(
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      nik: freezed == nik
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as RegisterRole?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileResponseImpl implements _ProfileResponse {
  _$ProfileResponseImpl(
      {required this.name,
      required this.message,
      required this.code,
      required this.status,
      required this.id,
      required this.username,
      required this.email,
      @JsonKey(name: 'gender_id') required this.gender,
      required this.nik,
      @JsonKey(name: 'full_name') required this.fullName,
      required this.birthdate,
      @JsonKey(name: 'phone_number') required this.phoneNumber,
      required this.address,
      @JsonKey(name: 'is_completed') required this.isCompleted,
      required this.role});

  factory _$ProfileResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileResponseImplFromJson(json);

  @override
  final String? name;
  @override
  final String? message;
  @override
  final int? code;
  @override
  final int? status;
  @override
  final int? id;
  @override
  final String? username;
  @override
  final String? email;
  @override
  @JsonKey(name: 'gender_id')
  final int? gender;
  @override
  final String? nik;
  @override
  @JsonKey(name: 'full_name')
  final String? fullName;
  @override
  final String? birthdate;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  @override
  final String? address;
  @override
  @JsonKey(name: 'is_completed')
  final bool? isCompleted;
  @override
  final RegisterRole? role;

  @override
  String toString() {
    return 'ProfileResponse(name: $name, message: $message, code: $code, status: $status, id: $id, username: $username, email: $email, gender: $gender, nik: $nik, fullName: $fullName, birthdate: $birthdate, phoneNumber: $phoneNumber, address: $address, isCompleted: $isCompleted, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileResponseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.nik, nik) || other.nik == nik) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      message,
      code,
      status,
      id,
      username,
      email,
      gender,
      nik,
      fullName,
      birthdate,
      phoneNumber,
      address,
      isCompleted,
      role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileResponseImplCopyWith<_$ProfileResponseImpl> get copyWith =>
      __$$ProfileResponseImplCopyWithImpl<_$ProfileResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileResponseImplToJson(
      this,
    );
  }
}

abstract class _ProfileResponse implements ProfileResponse {
  factory _ProfileResponse(
      {required final String? name,
      required final String? message,
      required final int? code,
      required final int? status,
      required final int? id,
      required final String? username,
      required final String? email,
      @JsonKey(name: 'gender_id') required final int? gender,
      required final String? nik,
      @JsonKey(name: 'full_name') required final String? fullName,
      required final String? birthdate,
      @JsonKey(name: 'phone_number') required final String? phoneNumber,
      required final String? address,
      @JsonKey(name: 'is_completed') required final bool? isCompleted,
      required final RegisterRole? role}) = _$ProfileResponseImpl;

  factory _ProfileResponse.fromJson(Map<String, dynamic> json) =
      _$ProfileResponseImpl.fromJson;

  @override
  String? get name;
  @override
  String? get message;
  @override
  int? get code;
  @override
  int? get status;
  @override
  int? get id;
  @override
  String? get username;
  @override
  String? get email;
  @override
  @JsonKey(name: 'gender_id')
  int? get gender;
  @override
  String? get nik;
  @override
  @JsonKey(name: 'full_name')
  String? get fullName;
  @override
  String? get birthdate;
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @override
  String? get address;
  @override
  @JsonKey(name: 'is_completed')
  bool? get isCompleted;
  @override
  RegisterRole? get role;
  @override
  @JsonKey(ignore: true)
  _$$ProfileResponseImplCopyWith<_$ProfileResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
