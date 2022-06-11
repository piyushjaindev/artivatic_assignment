import 'package:bloc/bloc.dart';

import '../models/home_data_model.dart';
import '../repositories/home_data_repository.dart';

part 'home_data_state.dart';

class HomeDataCubit extends Cubit<HomeDataState> {
  HomeDataCubit() : super(const HomeDataState.loading());

  Future<void> getHomeData() async {
    try {
      final data = await HomeDataRepository().getHomeData();
      emit(HomeDataState.loaded(data));
    } catch (e) {
      emit(HomeDataState.error(e.toString()));
    }
  }
}
