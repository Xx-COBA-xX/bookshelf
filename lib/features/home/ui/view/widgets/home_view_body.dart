// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_search_bar.dart';
import 'books_category.dart';
import 'build_new_section_title.dart';
import 'category_book_listview.dart';
import 'custom_appbar.dart';
import 'on_reading_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          const CustomAppBar(),
          const BuildCustomSearchBar(),
          const BuildNewSectionTitle(
            title: "On reading",
          ),
          OnReadingListView(
            size: size,
          ),
          const BooksCategroy(),
          CategoryBookListView(
            size: size,
          )
        ],
      ),
    );
  }
}
