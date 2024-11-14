import 'package:flutter/material.dart';
import 'package:newscloud/view/widgets/app_title.dart';
import 'package:newscloud/view/widgets/news_view_body.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});
  static String id = '/NewsView';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const AppTitle(),
        ),
        body: const NewsViewBody(),
      ),
    );
  }
}
