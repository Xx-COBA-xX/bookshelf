import 'package:flutter/material.dart';

import 'vertical_books_listview_item.dart';

class VerticalBooksListView extends StatelessWidget {
  const VerticalBooksListView({
    Key? key,
    required this.size,
  }) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return VerticalBooksListViewItem(
          size: size,
        );
      },
    );
  }
}
