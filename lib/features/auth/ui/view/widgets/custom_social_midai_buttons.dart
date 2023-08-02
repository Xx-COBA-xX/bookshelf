import 'package:bookshelf/core/utils/assets.dart';
import 'package:bookshelf/core/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class CustomSocialMidaButton extends StatelessWidget {
  const CustomSocialMidaButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          icon: Assets.googleLogo,
          onPressed: () {},
        ),
        const SizedBox(
          width: 32,
        ),
        CustomIconButton(
          icon: Assets.facebookLogo,
          onPressed: () {},
        ),
        const SizedBox(
          width: 32,
        ),
        CustomIconButton(
          icon: Assets.appleLogo,
          onPressed: () {},
        ),
      ],
    );
  }
}
