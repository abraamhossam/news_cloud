import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newscloud/utils/my_bindings.dart';
import 'package:newscloud/utils/pages.dart';
import 'package:newscloud/view/views/splash_view.dart';

void main() {
  runApp(
    const NewsCloud(),
  );
}

class NewsCloud extends StatelessWidget {
  const NewsCloud({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashView.id,
      getPages: pages,
      initialBinding: MyBindings(),
    );
  }
}
