class NewsDetailsModel {
  final String title;
  String? subTitle;
  String? image;

  NewsDetailsModel({
    required this.title,
    this.subTitle,
    this.image,
  });
  factory NewsDetailsModel.fromJson(dynamic data) {
    return NewsDetailsModel(
      title: data["title"],
      subTitle: data["description"],
      image: data["urlToImage"],
    );
  }
}
