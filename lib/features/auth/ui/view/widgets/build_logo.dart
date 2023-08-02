import 'package:bookshelf/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BuildLogo extends StatelessWidget {
  const BuildLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.authLogo),
        ),
      ),
    );
  }
}
