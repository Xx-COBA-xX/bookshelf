import 'package:flutter/material.dart';

import 'category_books_gridview.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: BuildBooksCategories(
            size: size,
          ),
        ),
      ],
    );
  }
}
