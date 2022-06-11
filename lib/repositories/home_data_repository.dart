import '../models/home_data_model.dart';
import '../services/http_service.dart';
import '../utils/constants.dart';

class HomeDataRepository {
  Future<HomeDataModel> getHomeData() async {
    try {
      final response = await HttpService().getRequest(Uri.parse(apiUrl));
      return HomeDataModel.fromJson(response);
    } on Exception {
      rethrow;
    }
  }
}
