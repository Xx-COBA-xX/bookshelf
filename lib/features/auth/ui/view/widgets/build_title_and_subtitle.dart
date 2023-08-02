import 'package:bookshelf/core/utils/color.dart';
import 'package:bookshelf/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BuildTitleAndSubTitle extends StatelessWidget {
  const BuildTitleAndSubTitle({
    super.key,
    required this.title,
    required this.supTitle,
  });
  final String title;
  final String supTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: Style.textStyle24.copyWith(color: kPrimaryColor),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          supTitle,
          style: Style.textStyle16,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
