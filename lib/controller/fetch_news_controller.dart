import 'package:get/get.dart';
import 'package:newscloud/model/news_details_model.dart';
import 'package:newscloud/service/news_service.dart';

class FetchNewsController extends GetxController {
  RxString state = ''.obs;
  List<NewsDetailsModel> dataSuccess = [];
  String dataFailure = '';
  fetchNews({required String categoryName}) async {
    state.value = 'loading';
    try {
      dataSuccess = await getNews(category: categoryName);
      state.value = 'success';
    } catch (e) {
      dataFailure = dataFailure;
      state.value = 'failure';
    }
  }
}
