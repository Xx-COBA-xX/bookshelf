import 'package:flutter/material.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/styles.dart';

class BuildBookComplateRating extends StatelessWidget {
  const BuildBookComplateRating({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Page 124 from 332",
              style: Style.textStyle13.copyWith(
                  color: kAuthorTextColor.withOpacity(0.7),
                  fontSize: size.height < 700 ? size.height / 57 : 12),
            ),
            Text(
              "50%",
              style: Style.textStyle15.copyWith(
                  fontSize: size.height < 700 ? size.height / 57 : 12,
                  color: kAuthorTextColor.withOpacity(0.7)),
            ),
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        Stack(
          children: [
            Container(
              height: size.height < 700 ? size.height / 180 : 4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: kAuthorTextColor.withOpacity(0.3),
              ),
            ),
            Container(
              width: (size.width > 286 ? 350 : size.width * .95) * (50 / 200),
              height: size.height < 700 ? size.height / 180 : 4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2), color: kPrimaryColor),
            ),
          ],
        ),
      ],
    );
  }
}
