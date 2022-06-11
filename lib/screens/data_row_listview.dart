import 'package:flutter/material.dart';

import '../models/data_row_model.dart';
import '../widgets/data_row_card.dart';

class DataRowListView extends StatelessWidget {
  const DataRowListView({Key? key, required this.rows}) : super(key: key);

  final List<DataRowModel> rows;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) => DataRowCard(data: rows[index]),
      separatorBuilder: (context, index) => const SizedBox(height: 15),
      itemCount: rows.length,
    );
  }
}
