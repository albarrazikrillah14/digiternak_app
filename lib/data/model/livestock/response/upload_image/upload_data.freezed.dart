// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UploadData _$UploadDataFromJson(Map<String, dynamic> json) {
  return _UploadData.fromJson(json);
}

/// @nodoc
mixin _$UploadData {
  @JsonKey(name: 'livestock_images')
  List<String>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'note_images')
  List<String>? get noteImages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadDataCopyWith<UploadData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadDataCopyWith<$Res> {
  factory $UploadDataCopyWith(
          UploadData value, $Res Function(UploadData) then) =
      _$UploadDataCopyWithImpl<$Res, UploadData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'livestock_images') List<String>? images,
      @JsonKey(name: 'note_images') List<String>? noteImages});
}

/// @nodoc
class _$UploadDataCopyWithImpl<$Res, $Val extends UploadData>
    implements $UploadDataCopyWith<$Res> {
  _$UploadDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = freezed,
    Object? noteImages = freezed,
  }) {
    return _then(_value.copyWith(
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      noteImages: freezed == noteImages
          ? _value.noteImages
          : noteImages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadDataImplCopyWith<$Res>
    implements $UploadDataCopyWith<$Res> {
  factory _$$UploadDataImplCopyWith(
          _$UploadDataImpl value, $Res Function(_$UploadDataImpl) then) =
      __$$UploadDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'livestock_images') List<String>? images,
      @JsonKey(name: 'note_images') List<String>? noteImages});
}

/// @nodoc
class __$$UploadDataImplCopyWithImpl<$Res>
    extends _$UploadDataCopyWithImpl<$Res, _$UploadDataImpl>
    implements _$$UploadDataImplCopyWith<$Res> {
  __$$UploadDataImplCopyWithImpl(
      _$UploadDataImpl _value, $Res Function(_$UploadDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = freezed,
    Object? noteImages = freezed,
  }) {
    return _then(_$UploadDataImpl(
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      noteImages: freezed == noteImages
          ? _value._noteImages
          : noteImages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadDataImpl implements _UploadData {
  _$UploadDataImpl(
      {@JsonKey(name: 'livestock_images') required final List<String>? images,
      @JsonKey(name: 'note_images') required final List<String>? noteImages})
      : _images = images,
        _noteImages = noteImages;

  factory _$UploadDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadDataImplFromJson(json);

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

  final List<String>? _noteImages;
  @override
  @JsonKey(name: 'note_images')
  List<String>? get noteImages {
    final value = _noteImages;
    if (value == null) return null;
    if (_noteImages is EqualUnmodifiableListView) return _noteImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UploadData(images: $images, noteImages: $noteImages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadDataImpl &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality()
                .equals(other._noteImages, _noteImages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_noteImages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadDataImplCopyWith<_$UploadDataImpl> get copyWith =>
      __$$UploadDataImplCopyWithImpl<_$UploadDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadDataImplToJson(
      this,
    );
  }
}

abstract class _UploadData implements UploadData {
  factory _UploadData(
      {@JsonKey(name: 'livestock_images') required final List<String>? images,
      @JsonKey(name: 'note_images')
      required final List<String>? noteImages}) = _$UploadDataImpl;

  factory _UploadData.fromJson(Map<String, dynamic> json) =
      _$UploadDataImpl.fromJson;

  @override
  @JsonKey(name: 'livestock_images')
  List<String>? get images;
  @override
  @JsonKey(name: 'note_images')
  List<String>? get noteImages;
  @override
  @JsonKey(ignore: true)
  _$$UploadDataImplCopyWith<_$UploadDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
