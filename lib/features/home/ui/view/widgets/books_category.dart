import 'package:bookshelf/features/home/ui/view/widgets/type_of_books_category_item.dart';
import 'package:flutter/material.dart';

import '../../../data/models/books_category_model.dart';

class BooksCategroy extends StatefulWidget {
  const BooksCategroy({super.key});

  @override
  State<BooksCategroy> createState() => _BooksCategroyState();
}

class _BooksCategroyState extends State<BooksCategroy> {
  int currentCategory = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 32, bottom: 16),
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: booksCategory.length,
        itemBuilder: (context, index) {
          return TypeOfBooksCategoryItem(
            currentIndex: currentCategory,
            index: index,
            onPressed: () {
              setState(() {
                currentCategory = index;
              });
            },
          );
        },
      ),
    );
  }
}
