// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:bookshelf/features/home/ui/view/widgets/book_info.dart';
import 'package:bookshelf/features/home/ui/view/widgets/build_book_image.dart';

import '../../../../../core/widgets/custom_search_bar.dart';
import 'best_seller_listview.dart';
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
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
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
              ),
              const BuildNewSectionTitle(
                title: "Best Seller",
              ),
              BestSellerListView(size: size),
              const BuildNewSectionTitle(
                title: "Trending Books",
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: TrendingBookListIvew(
            size: size,
          ),
        ),
      ],
    );
  }
}

class TrendingBookListIvew extends StatelessWidget {
  const TrendingBookListIvew({
    Key? key,
    required this.size,
  }) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        return TrendingBooksLIstViewItem(
          size: size,
        );
      },
    );
  }
}

class TrendingBooksLIstViewItem extends StatelessWidget {
  const TrendingBooksLIstViewItem({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      margin: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
      height: size.height * .13,
      child: Row(
        children: [
          Expanded(
            flex: size.width < 370 ? 3 : 2,
            child: const BuildBookImage(),
          ),
          Expanded(
            flex: size.width < 370 ? 9 : 8,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: BookInfo(size: size),
            ),
          )
        ],
      ),
    );
  }
}
