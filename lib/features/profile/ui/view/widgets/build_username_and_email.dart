import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BuildUsernameAndEmail extends StatelessWidget {
  const BuildUsernameAndEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          "7aiDER Al-Tmimy.",
          style: Style.textStyle20.copyWith(
            fontWeight: FontWeight.w600,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        const SizedBox(
          height: 2,
        ),
        Text(
          "coba@gmail.com",
          style: Style.textStyle15.copyWith(
            fontWeight: FontWeight.w500,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        const SizedBox(
          height: 32,
        )
      ],
    );
  }
}
