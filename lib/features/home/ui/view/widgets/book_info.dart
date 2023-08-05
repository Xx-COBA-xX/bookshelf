import 'package:flutter/material.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/styles.dart';

class BookInfo extends StatelessWidget {
  const BookInfo({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Auhter name",
          style: Style.textStyle15.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: size.height < 700 ? size.height / 46 : 15,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          "Wather And Ice",
          style: Style.textStyle16.copyWith(
            fontWeight: FontWeight.w600,
            color: kTextColor.withOpacity(0.9),
            fontSize: size.height < 700 ? size.height / 43 : 16,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
        const Spacer(),
        Text(
          "\$20",
          style: Style.textStyle16.copyWith(
            fontWeight: FontWeight.w600,
            color: kTextColor.withOpacity(0.9),
            fontSize: size.height < 700 ? size.height / 43 : 17,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
      ],
    );
  }
}
