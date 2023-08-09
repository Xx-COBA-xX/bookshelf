import 'package:flutter/material.dart';

import 'best_seller_listview.dart';
import 'build_new_section_title.dart';

class BuildSimilerBooksListView extends StatelessWidget {
  const BuildSimilerBooksListView({
    Key? key,
    required this.size,
  }) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 20),
          child: BuildNewSectionTitle(
            title: "Similer Books",
          ),
        ),
        BestSellerListView(size: size),
      ],
    );
  }
}
