// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

import 'build_book_image.dart';
import 'build_onreading_book_info.dart';

class OnReadingListViewItem extends StatelessWidget {
  const OnReadingListViewItem({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width > 286 ? 286 : size.width * .9,
      margin: const EdgeInsets.only(left: 16),
      child: Row(
        children: [
          const Expanded(
            flex: 2,
            child: BuildBookImage(),
          ),
          Expanded(
            flex: 5,
            child: BuildOnReadingBookInfo(size: size),
          )
        ],
      ),
    );
  }
}
