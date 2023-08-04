// ignore_for_file: avoid_unnecessary_containers

import 'package:bookshelf/core/utils/color.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'build_book_complate_rating.dart';

class BuildOnReadingBookInfo extends StatelessWidget {
  const BuildOnReadingBookInfo({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Auhter name",
                  style: Style.textStyle15.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: size.height < 700 ? size.height / 46 : 15),
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
                      fontSize: size.height < 700 ? size.height / 43 : 15),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ],
            ),
            BuildBookComplateRating(size: size),
          ],
        ),
      ),
    );
  }
}
