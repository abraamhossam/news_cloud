import 'package:get/get.dart';
import 'package:newscloud/controller/fetch_news_controller.dart';
import 'package:newscloud/controller/fetch_news_details_controller.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(FetchNewsController()).fetchNews(
      categoryName: 'general',
    );
    Get.put(FetchNewsDetailsController());
  }
}
