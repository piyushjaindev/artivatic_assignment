import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/constants.dart';

part 'data_row_model.freezed.dart';
part 'data_row_model.g.dart';

@Freezed()
class DataRowModel with _$DataRowModel {
  const factory DataRowModel({
    @Default('title') String title,
    @Default('description') String description,
    @Default(defaultImage) @JsonKey(name: 'imageHref') String image,
  }) = _DataRowModel;

  factory DataRowModel.fromJson(Map<String, dynamic> json) =>
      _$DataRowModelFromJson(json);
}
