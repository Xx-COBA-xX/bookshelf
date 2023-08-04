import 'package:flutter/material.dart';

import 'on_reading_list_view_item.dart';

class OnReadingListView extends StatelessWidget {
  const OnReadingListView({
    Key? key,
    required this.size,
  }) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height > 850 ? size.height * .125 : size.height * .135,
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
