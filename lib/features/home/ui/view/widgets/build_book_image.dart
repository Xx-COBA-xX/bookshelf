import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class BuildBookImage extends StatelessWidget {
  const BuildBookImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 5,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: const DecorationImage(
              image: AssetImage(
                Assets.testImage,
              ),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
