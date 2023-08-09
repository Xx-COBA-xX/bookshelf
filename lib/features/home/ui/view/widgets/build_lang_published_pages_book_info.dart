import 'package:flutter/material.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/styles.dart';

class BuildLangPublishedPagesBooksInfo extends StatelessWidget {
  const BuildLangPublishedPagesBooksInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 32,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildLangPublishedPagedInfo(
            subTitle: "Language",
            title: "ENG",
          ),
          buildLangPublishedPagedInfo(
            subTitle: "Published",
            title: "2023",
          ),
          buildLangPublishedPagedInfo(
            subTitle: "Pages",
            title: "332",
          ),
        ],
      ),
    );
  }

  Column buildLangPublishedPagedInfo(
      {required String title, required String subTitle}) {
    return Column(
      children: [
        Text(
          title,
          style: Style.textStyle20.copyWith(fontWeight: FontWeight.w500),
        ),
        Text(
          subTitle,
          style: Style.textStyle16.copyWith(color: kAuthorTextColor),
        )
      ],
    );
  }
}
