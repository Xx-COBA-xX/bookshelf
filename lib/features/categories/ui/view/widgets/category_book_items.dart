// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/color.dart';
import '../../view_model/repo/categories_info.dart';

class CategoryBooksItmes extends StatelessWidget {
  const CategoryBooksItmes({
    Key? key,
    required this.size,
    required this.index,
  }) : super(key: key);

  final Size size;
  final int index;
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () {},
      padding: EdgeInsets.zero,
      child: Container(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: categoryColors[
                      CategroiesInfo.booksCategories[index].categoryColorNo],
                ),
                child: Center(
                  child: SvgPicture.asset(
                    CategroiesInfo.booksCategories[index].categoryImage,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                // padding: const EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      CategroiesInfo.booksCategories[index].categoryName,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontSize: size.height > 800 ? 18 : size.height / 45),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      "${CategroiesInfo.booksCategories[index].categoryBooksNo} Books",
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontSize: size.height > 800 ? 14 : size.height / 55,
                          color: kAuthorTextColor),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
