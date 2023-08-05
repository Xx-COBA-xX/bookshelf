import 'package:flutter/material.dart';

import '../../view_model/repo/categories_info.dart';
import 'category_book_items.dart';

class BuildBooksCategories extends StatelessWidget {
  const BuildBooksCategories({
    Key? key,
    required this.size,
  }) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      height: size.height,
      width: size.width,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1 / 1.4,
          crossAxisSpacing: 26,
          mainAxisSpacing: 16,
        ),
        itemCount: CategroiesInfo.booksCategories.length,
        itemBuilder: (context, index) {
          return CategoryBooksItmes(
            size: size,
            index: index,
          );
        },
      ),
    );
  }
}