import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/home_data_cubit.dart';
import '../models/data_row_model.dart';
import 'data_row_listview.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeDataCubit, HomeDataState>(
      builder: (context, state) {
        if (state.status == HomeDataStatus.error) {
          return _buildErrorWidget(state.error!);
        } else if (state.status == HomeDataStatus.loaded) {
          return _buildLoadedWidget(
            title: state.data!.title,
            rows: state.data!.rows,
            context: context,
          );
        }
        return _buildLodingWidget();
      },
    );
  }

  Scaffold _buildLoadedWidget({
    required String title,
    required List<DataRowModel> rows,
    required BuildContext context,
  }) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: RefreshIndicator(
          onRefresh: () => context.read<HomeDataCubit>().getHomeData(),
          child: DataRowListView(rows: rows)),
    );
  }

  Scaffold _buildErrorWidget(String error) {
    return Scaffold(body: Center(child: Text(error)));
  }

  Scaffold _buildLodingWidget() {
    return const Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}
