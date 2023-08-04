// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookshelf/features/home/ui/view/widgets/type_of_books_category_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:bookshelf/core/utils/color.dart';
import 'package:bookshelf/core/utils/styles.dart';

import '../../../../../core/widgets/custom_search_bar.dart';
import '../../../data/models/books_category_model.dart';
import 'build_new_section_title.dart';
import 'custom_appbar.dart';
import 'on_reading_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const CustomAppBar(),
        const BuildCustomSearchBar(),
        const BuildNewSectionTitle(
          title: "On reading",
        ),
        OnReadingListView(
          size: size,
        ),
        const BooksCategroy()
      ],
    );
  }
}

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
