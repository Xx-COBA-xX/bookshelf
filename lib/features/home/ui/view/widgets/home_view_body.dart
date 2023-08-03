import 'package:bookshelf/core/utils/color.dart';
import 'package:bookshelf/features/auth/ui/view/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_search_bar.dart';
import 'custom_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        BuildCustomSearchBar(),
        BuildNewSectionTitle(
          title: "On reading",
        )
      ],
    );
  }
}

class BuildNewSectionTitle extends StatelessWidget {
  const BuildNewSectionTitle({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Style.textStyle20,
            textAlign: TextAlign.center,
          ),
          CustomTextButton(
            style: Style.textStyle14.copyWith(
              color: kPrimaryColor,
            ),
            text: "See All",
            onTap: () {},
          )
        ],
      ),
    );
  }
}
