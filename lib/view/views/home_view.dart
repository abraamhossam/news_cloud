import 'package:flutter/material.dart';
import 'package:newscloud/utils/size_config.dart';
import 'package:newscloud/view/widgets/app_title.dart';
import 'package:newscloud/view/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = '/HomeView';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const AppTitle(),
        ),
        body: const HomeViewBody(),
      ),
    );
  }
}
