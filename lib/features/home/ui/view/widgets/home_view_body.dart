// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:bookshelf/features/home/ui/view/widgets/build_book_image.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/styles.dart';
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
              BestSellerListView(size: size)
            ],
          ),
        ),
        const SliverFillRemaining(
            // child: BestSellerListView(),
            ),
      ],
    );
  }
}

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    Key? key,
    required this.size,
  }) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * .13,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return BestSellerListViewItem(size: size);
        },
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16),
      height: size.height * .13,
      width: 209,
      child: Row(
        children: [
          const Expanded(
            flex: 4,
            child: BuildBookImage(),
          ),
          Expanded(
            flex: 7,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Auhter name",
                    style: Style.textStyle15.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: size.height < 700 ? size.height / 46 : 15,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Wather And Ice",
                    style: Style.textStyle16.copyWith(
                      fontWeight: FontWeight.w600,
                      color: kTextColor.withOpacity(0.9),
                      fontSize: size.height < 700 ? size.height / 43 : 16,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  const Spacer(),
                  Text(
                    "\$20",
                    style: Style.textStyle16.copyWith(
                      fontWeight: FontWeight.w600,
                      color: kTextColor.withOpacity(0.9),
                      fontSize: size.height < 700 ? size.height / 43 : 17,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
