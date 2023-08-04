// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_search_bar.dart';
import 'build_new_section_title.dart';
import 'custom_appbar.dart';
import 'on_reading_list_view_item.dart';

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
        )
      ],
    );
  }
}

class OnReadingListView extends StatelessWidget {
  const OnReadingListView({
    Key? key,
    required this.size,
  }) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height > 850 ? size.height * .13 : size.height * .14,
      width: size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return OnReadingListViewItem(
            size: size,
          );
        },
      ),
    );
  }
}
