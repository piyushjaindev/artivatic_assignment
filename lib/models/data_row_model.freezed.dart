// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_row_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataRowModel _$DataRowModelFromJson(Map<String, dynamic> json) {
  return _DataRowModel.fromJson(json);
}

/// @nodoc
mixin _$DataRowModel {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'imageHref')
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataRowModelCopyWith<DataRowModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataRowModelCopyWith<$Res> {
  factory $DataRowModelCopyWith(
          DataRowModel value, $Res Function(DataRowModel) then) =
      _$DataRowModelCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String description,
      @JsonKey(name: 'imageHref') String image});
}

/// @nodoc
class _$DataRowModelCopyWithImpl<$Res> implements $DataRowModelCopyWith<$Res> {
  _$DataRowModelCopyWithImpl(this._value, this._then);

  final DataRowModel _value;
  // ignore: unused_field
  final $Res Function(DataRowModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DataRowModelCopyWith<$Res>
    implements $DataRowModelCopyWith<$Res> {
  factory _$$_DataRowModelCopyWith(
          _$_DataRowModel value, $Res Function(_$_DataRowModel) then) =
      __$$_DataRowModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String description,
      @JsonKey(name: 'imageHref') String image});
}

/// @nodoc
class __$$_DataRowModelCopyWithImpl<$Res>
    extends _$DataRowModelCopyWithImpl<$Res>
    implements _$$_DataRowModelCopyWith<$Res> {
  __$$_DataRowModelCopyWithImpl(
      _$_DataRowModel _value, $Res Function(_$_DataRowModel) _then)
      : super(_value, (v) => _then(v as _$_DataRowModel));

  @override
  _$_DataRowModel get _value => super._value as _$_DataRowModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_DataRowModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataRowModel implements _DataRowModel {
  const _$_DataRowModel(
      {this.title = 'title',
      this.description = 'description',
      @JsonKey(name: 'imageHref') this.image = defaultImage});

  factory _$_DataRowModel.fromJson(Map<String, dynamic> json) =>
      _$$_DataRowModelFromJson(json);

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey(name: 'imageHref')
  final String image;

  @override
  String toString() {
    return 'DataRowModel(title: $title, description: $description, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataRowModel &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$$_DataRowModelCopyWith<_$_DataRowModel> get copyWith =>
      __$$_DataRowModelCopyWithImpl<_$_DataRowModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataRowModelToJson(this);
  }
}

abstract class _DataRowModel implements DataRowModel {
  const factory _DataRowModel(
      {final String title,
      final String description,
      @JsonKey(name: 'imageHref') final String image}) = _$_DataRowModel;

  factory _DataRowModel.fromJson(Map<String, dynamic> json) =
      _$_DataRowModel.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'imageHref')
  String get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DataRowModelCopyWith<_$_DataRowModel> get copyWith =>
      throw _privateConstructorUsedError;
}
