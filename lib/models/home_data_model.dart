import 'package:freezed_annotation/freezed_annotation.dart';

import 'data_row_model.dart';

part 'home_data_model.freezed.dart';
part 'home_data_model.g.dart';

@Freezed()
class HomeDataModel with _$HomeDataModel {
  const factory HomeDataModel({
    @Default('title') String title,
    @Default([]) List<DataRowModel> rows,
  }) = _HomeDataModel;

  factory HomeDataModel.fromJson(Map<String, dynamic> json) =>
      _$HomeDataModelFromJson(json);
}
