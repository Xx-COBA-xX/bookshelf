import 'package:flutter/material.dart';

import 'category_books_listview_item.dart';

class CategoryBookListView extends StatelessWidget {
  const CategoryBookListView({super.key, required this.size});
  final Size size;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * .31,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryBookListViewItem(
            index: index,
            size: size,
          );
        },
      ),
    );
  }
}
