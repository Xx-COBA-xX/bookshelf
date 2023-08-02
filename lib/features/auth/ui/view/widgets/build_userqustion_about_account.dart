import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_text_button.dart';

class BuildUserQusitonaboutAccount extends StatelessWidget {
  const BuildUserQusitonaboutAccount({
    super.key,
    required this.qustion,
    required this.textButton,
    this.onTap,
  });
  final String qustion;
  final String textButton;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          qustion,
          style: Style.textStyle16,
        ),
        CustomTextButton(
            text: textButton,
            style: Style.textStyle16.copyWith(
              fontWeight: FontWeight.w600,
            ),
            onTap: onTap)
      ],
    );
  }
}
