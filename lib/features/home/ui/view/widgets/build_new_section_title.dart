// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../auth/ui/view/widgets/custom_text_button.dart';

class BuildNewSectionTitle extends StatelessWidget {
  const BuildNewSectionTitle({
    Key? key,
    required this.title,
     this.seeAll = true,
  }) : super(key: key);

  final String title;
  final bool seeAll;
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
          seeAll? CustomTextButton(
            style: Style.textStyle15,
            text: "See All",
            onTap: () {},
          ) : const SizedBox()
        ],
      ),
    );
  }
}
