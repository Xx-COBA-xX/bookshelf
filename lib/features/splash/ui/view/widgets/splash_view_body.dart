import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import 'background_slider.dart';
import 'logo_animation.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> slideAnimation;

  bool isAnimated = false;

  @override
  void initState() {
    super.initState();

    initSlideBackgroundAnimation();
    navigatorToLoginView();
  }

  @override
  void deactivate() {
    controller.dispose();
    super.deactivate();
  }

  void initSlideBackgroundAnimation() {
    Future.delayed(const Duration(milliseconds: 40), () {
      setState(() {
        isAnimated = true;
      });
    });
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    slideAnimation = Tween<Offset>(
      begin: const Offset(0, -4),
      end: Offset.zero,
    ).animate(controller);

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Stack(
        children: [
          BackgroundSlider(slideAnimation: slideAnimation),
          LogoAnimation(
              slideAnimation: slideAnimation,
              isAnimated: isAnimated,
              size: size)
        ],
      ),
    );
  }

  void navigatorToLoginView() {
    Future.delayed(const Duration(seconds: 5), () {
      GoRouter.of(context).push(AppRouter.kLoginViewRoute);
    });
  }
}
