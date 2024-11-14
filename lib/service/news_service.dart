import 'package:dio/dio.dart';
import 'package:newscloud/model/news_details_model.dart';

Future<List<NewsDetailsModel>> getNews({required String category}) async {
  final Dio dio = Dio();
  String baseUrl = 'https://newsapi.org/v2';
  String apiKey = 'fa718fa167c94617afc375f67da3229d';
  String country = 'us';
  List<NewsDetailsModel> news = [];
  var response = await dio.get(
      '$baseUrl/top-headlines?country=$country&apiKey=$apiKey&category=$category');

  for (var item in response.data["articles"]) {
    news.add(
      NewsDetailsModel.fromJson(item),
    );
  }
  return news;
}
