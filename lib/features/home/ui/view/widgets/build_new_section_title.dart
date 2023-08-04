import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../auth/ui/view/widgets/custom_text_button.dart';

class BuildNewSectionTitle extends StatelessWidget {
  const BuildNewSectionTitle({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16, bottom: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Style.textStyle20,
            textAlign: TextAlign.center,
          ),
          CustomTextButton(
            style: Style.textStyle15,
            text: "See All",
            onTap: () {},
          )
        ],
      ),
    );
  }
}
