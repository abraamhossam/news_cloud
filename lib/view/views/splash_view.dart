import 'package:flutter/material.dart';
import 'package:newscloud/constants.dart';
import 'package:newscloud/view/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static String id = '/SplashView';
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: SplashViewBody(),
      ),
    );
  }
}
