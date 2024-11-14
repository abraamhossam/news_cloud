import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newscloud/controller/fetch_news_details_controller.dart';
import 'package:newscloud/model/news_category_model.dart';
import 'package:newscloud/view/views/news_view.dart';

class CustomNewsCategory extends StatefulWidget {
  const CustomNewsCategory({
    super.key,
    required this.model,
  });
  final NewsCategoryModel model;

  @override
  State<CustomNewsCategory> createState() => _CustomNewsCategoryState();
}

class _CustomNewsCategoryState extends State<CustomNewsCategory> {
  final FetchNewsDetailsController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.fetchNews(categoryName: widget.model.text);
        Get.toNamed(NewsView.id);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
        ),
        child: AspectRatio(
          aspectRatio: 15 / 10,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  widget.model.image,
                ),
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                widget.model.text,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
