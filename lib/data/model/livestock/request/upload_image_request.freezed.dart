// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_image_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UploadImageRequest {
  @JsonKey(name: 'livestock_image')
  File get image => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UploadImageRequestCopyWith<UploadImageRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadImageRequestCopyWith<$Res> {
  factory $UploadImageRequestCopyWith(
          UploadImageRequest value, $Res Function(UploadImageRequest) then) =
      _$UploadImageRequestCopyWithImpl<$Res, UploadImageRequest>;
  @useResult
  $Res call({@JsonKey(name: 'livestock_image') File image, String id});
}

/// @nodoc
class _$UploadImageRequestCopyWithImpl<$Res, $Val extends UploadImageRequest>
    implements $UploadImageRequestCopyWith<$Res> {
  _$UploadImageRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadImageRequestImplCopyWith<$Res>
    implements $UploadImageRequestCopyWith<$Res> {
  factory _$$UploadImageRequestImplCopyWith(_$UploadImageRequestImpl value,
          $Res Function(_$UploadImageRequestImpl) then) =
      __$$UploadImageRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'livestock_image') File image, String id});
}

/// @nodoc
class __$$UploadImageRequestImplCopyWithImpl<$Res>
    extends _$UploadImageRequestCopyWithImpl<$Res, _$UploadImageRequestImpl>
    implements _$$UploadImageRequestImplCopyWith<$Res> {
  __$$UploadImageRequestImplCopyWithImpl(_$UploadImageRequestImpl _value,
      $Res Function(_$UploadImageRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? id = null,
  }) {
    return _then(_$UploadImageRequestImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UploadImageRequestImpl implements _UploadImageRequest {
  _$UploadImageRequestImpl(
      {@JsonKey(name: 'livestock_image') required this.image,
      required this.id});

  @override
  @JsonKey(name: 'livestock_image')
  final File image;
  @override
  final String id;

  @override
  String toString() {
    return 'UploadImageRequest(image: $image, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadImageRequestImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadImageRequestImplCopyWith<_$UploadImageRequestImpl> get copyWith =>
      __$$UploadImageRequestImplCopyWithImpl<_$UploadImageRequestImpl>(
          this, _$identity);
}

abstract class _UploadImageRequest implements UploadImageRequest {
  factory _UploadImageRequest(
      {@JsonKey(name: 'livestock_image') required final File image,
      required final String id}) = _$UploadImageRequestImpl;

  @override
  @JsonKey(name: 'livestock_image')
  File get image;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$UploadImageRequestImplCopyWith<_$UploadImageRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
