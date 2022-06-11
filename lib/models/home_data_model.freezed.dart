// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeDataModel _$HomeDataModelFromJson(Map<String, dynamic> json) {
  return _HomeDataModel.fromJson(json);
}

/// @nodoc
mixin _$HomeDataModel {
  String get title => throw _privateConstructorUsedError;
  List<DataRowModel> get rows => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeDataModelCopyWith<HomeDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeDataModelCopyWith<$Res> {
  factory $HomeDataModelCopyWith(
          HomeDataModel value, $Res Function(HomeDataModel) then) =
      _$HomeDataModelCopyWithImpl<$Res>;
  $Res call({String title, List<DataRowModel> rows});
}

/// @nodoc
class _$HomeDataModelCopyWithImpl<$Res>
    implements $HomeDataModelCopyWith<$Res> {
  _$HomeDataModelCopyWithImpl(this._value, this._then);

  final HomeDataModel _value;
  // ignore: unused_field
  final $Res Function(HomeDataModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? rows = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      rows: rows == freezed
          ? _value.rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<DataRowModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_HomeDataModelCopyWith<$Res>
    implements $HomeDataModelCopyWith<$Res> {
  factory _$$_HomeDataModelCopyWith(
          _$_HomeDataModel value, $Res Function(_$_HomeDataModel) then) =
      __$$_HomeDataModelCopyWithImpl<$Res>;
  @override
  $Res call({String title, List<DataRowModel> rows});
}

/// @nodoc
class __$$_HomeDataModelCopyWithImpl<$Res>
    extends _$HomeDataModelCopyWithImpl<$Res>
    implements _$$_HomeDataModelCopyWith<$Res> {
  __$$_HomeDataModelCopyWithImpl(
      _$_HomeDataModel _value, $Res Function(_$_HomeDataModel) _then)
      : super(_value, (v) => _then(v as _$_HomeDataModel));

  @override
  _$_HomeDataModel get _value => super._value as _$_HomeDataModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? rows = freezed,
  }) {
    return _then(_$_HomeDataModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      rows: rows == freezed
          ? _value._rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<DataRowModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeDataModel implements _HomeDataModel {
  const _$_HomeDataModel(
      {this.title = 'title', final List<DataRowModel> rows = const []})
      : _rows = rows;

  factory _$_HomeDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_HomeDataModelFromJson(json);

  @override
  @JsonKey()
  final String title;
  final List<DataRowModel> _rows;
  @override
  @JsonKey()
  List<DataRowModel> get rows {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rows);
  }

  @override
  String toString() {
    return 'HomeDataModel(title: $title, rows: $rows)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeDataModel &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other._rows, _rows));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(_rows));

  @JsonKey(ignore: true)
  @override
  _$$_HomeDataModelCopyWith<_$_HomeDataModel> get copyWith =>
      __$$_HomeDataModelCopyWithImpl<_$_HomeDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeDataModelToJson(this);
  }
}

abstract class _HomeDataModel implements HomeDataModel {
  const factory _HomeDataModel(
      {final String title, final List<DataRowModel> rows}) = _$_HomeDataModel;

  factory _HomeDataModel.fromJson(Map<String, dynamic> json) =
      _$_HomeDataModel.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  List<DataRowModel> get rows => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_HomeDataModelCopyWith<_$_HomeDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
