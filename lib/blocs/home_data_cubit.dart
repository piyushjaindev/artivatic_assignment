import 'package:bloc/bloc.dart';

import '../models/home_data_model.dart';
import '../repositories/home_data_repository.dart';

part 'home_data_state.dart';

class HomeDataCubit extends Cubit<HomeDataState> {
  HomeDataCubit(this._repository) : super(const HomeDataState.loading());

  final HomeDataRepository _repository;

  Future<void> getHomeData() async {
    try {
      final data = await _repository.getHomeData();
      emit(HomeDataState.loaded(data));
    } catch (e) {
      emit(HomeDataState.error(e.toString()));
    }
  }
}
