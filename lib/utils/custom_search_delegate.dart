import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/home_data_cubit.dart';
import '../screens/data_row_listview.dart';

class CustomSearchDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios_new),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return _filterResultAndShow(context);
  }

  @override
  Widget buildResults(BuildContext context) {
    return _filterResultAndShow(context);
  }

  Widget _filterResultAndShow(BuildContext context) {
    final rows = context.read<HomeDataCubit>().state.data!.rows;
    final filteredRows =
        rows.where((row) => row.title.contains(query)).toList();

    return DataRowListView(rows: filteredRows);
  }
}
