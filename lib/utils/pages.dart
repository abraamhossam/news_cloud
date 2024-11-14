import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:newscloud/view/views/home_view.dart';
import 'package:newscloud/view/views/news_view.dart';
import 'package:newscloud/view/views/splash_view.dart';

List<GetPage<dynamic>>? pages = [
  GetPage(
    name: SplashView.id,
    page: () => const SplashView(),
  ),
  GetPage(
    name: HomeView.id,
    page: () => const HomeView(),
  ),
  GetPage(
    name: NewsView.id,
    page: () => const NewsView(),
  ),
];
