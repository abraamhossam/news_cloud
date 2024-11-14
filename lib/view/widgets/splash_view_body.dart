import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newscloud/view/views/home_view.dart';
import 'package:newscloud/view/widgets/animation_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animatationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
  }

  void initSlidingAnimation() {
    animatationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animatationController);
    animatationController.forward();
    Future.delayed(
      const Duration(seconds: 1),
      () {
        Get.offNamed(HomeView.id);
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    animatationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'NewsCloud',
            style: TextStyle(
              fontSize: 54,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          AnimationText(
            slidingAnimation: slidingAnimation,
          ),
        ],
      ),
    );
  }
}
