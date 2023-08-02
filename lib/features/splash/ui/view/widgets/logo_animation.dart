import 'package:flutter/material.dart';

import '../../../../../constant.dart';

class LogoAnimation extends StatelessWidget {
  const LogoAnimation({
    super.key,
    required this.slideAnimation,
    required this.isAnimated,
    required this.size,
  });

  final Animation<Offset> slideAnimation;
  final bool isAnimated;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slideAnimation,
        builder: (context, _) {
          return Center(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 2000),
              curve: Curves.easeIn,
              height: isAnimated ? size.height * 0.3 : 0,
              width: isAnimated ? size.width * 0.6 : 0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(logo),
                ),
              ),
            ),
          );
        });
  }
}
