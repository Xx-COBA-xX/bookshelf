import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'build_new_section_title.dart';

class BuildDescriptionSection extends StatelessWidget {
  const BuildDescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 32),
      child: Column(
        children: [
          const BuildNewSectionTitle(
            title: "Description",
            seeAll: false,
          ),
          const SizedBox(
            height: 13,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: const Text(
              """The book description goes most prominently on the book over , and the top of your  (below the price and above the ). It’s crucial it be compelling, because readers make buying decisions from the book description.
In this guide, I’ll walk you through how to write a book description, provide you a template, and include good and bad book description examples.In this guide, I’ll walk you through how to write a book description, provide you a template, and include good and bad book description examples""",
              style: Style.textStyle15,
            ),
          )
        ],
      ),
    );
  }
}