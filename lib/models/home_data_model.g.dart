// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeDataModel _$$_HomeDataModelFromJson(Map<String, dynamic> json) =>
    _$_HomeDataModel(
      title: json['title'] as String? ?? 'title',
      rows: (json['rows'] as List<dynamic>?)
              ?.map((e) => DataRowModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_HomeDataModelToJson(_$_HomeDataModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'rows': instance.rows,
    };
