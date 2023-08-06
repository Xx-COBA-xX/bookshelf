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
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: gridCount(),
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

  int gridCount() {
    switch (size.width) {
      case < 500: 
        return 3;
      case > 500 && < 800:
        return 4;
      case > 800 && < 1200:
        return 5;
      // case > 700 && < 800:
      //   return 6;
      default:
        return 6;
    }
  }
}
