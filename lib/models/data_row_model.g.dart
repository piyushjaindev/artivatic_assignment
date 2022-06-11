// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_row_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataRowModel _$$_DataRowModelFromJson(Map<String, dynamic> json) =>
    _$_DataRowModel(
      title: json['title'] as String? ?? 'title',
      description: json['description'] as String? ?? 'description',
      image: json['imageHref'] as String? ?? defaultImage,
    );

Map<String, dynamic> _$$_DataRowModelToJson(_$_DataRowModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'imageHref': instance.image,
    };
