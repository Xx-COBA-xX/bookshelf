import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/styles.dart';

class BuildBookInfo extends StatelessWidget {
  const BuildBookInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Water and Ice",
            style: Style.textStyle24.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            "Haider",
            style: Style.textStyle16.copyWith(),
          ),
          const SizedBox(
            height: 32,
          ),
          const BuildBooksType(),
          const SizedBox(
            height: 32,
          ),
          const Row(
            children: [
              Icon(
                CupertinoIcons.star_fill,
                color: Colors.amber,
              ),
              Text(
                "4.5",
                style: Style.textStyle16,
              )
            ],
          ),
          const Spacer(),
          Text(
            "\$ 15.5",
            style: Style.textStyle24.copyWith(fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}

class BuildBooksType extends StatelessWidget {
  const BuildBooksType({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: categoryColors[0]),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      child: const Center(
        child: Text(
          "book type",
          style: Style.textStyle13,
        ),
      ),
    );
  }
}
