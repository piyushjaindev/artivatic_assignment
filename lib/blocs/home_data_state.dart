part of 'home_data_cubit.dart';

enum HomeDataStatus {
  loading,
  loaded,
  error,
}

class HomeDataState {
  final HomeDataStatus status;
  final HomeDataModel? data;
  final String? error;

  const HomeDataState._({required this.status, this.data, this.error});

  const HomeDataState.loading() : this._(status: HomeDataStatus.loading);

  const HomeDataState.loaded(HomeDataModel data)
      : this._(
          status: HomeDataStatus.loaded,
          data: data,
        );

  const HomeDataState.error(String error)
      : this._(status: HomeDataStatus.error, error: error);
}
