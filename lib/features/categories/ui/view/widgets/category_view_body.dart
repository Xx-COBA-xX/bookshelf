import 'package:flutter/material.dart';

import 'category_books_gridview.dart';
import 'custom_appbar_title.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBarTitle(),
          BuildBooksCategories(
            size: size,
          )
        ],
      ),
    );
  }
}
