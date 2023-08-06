import 'package:flutter/material.dart';

import '../../features/home/ui/view/widgets/book_info.dart';
import '../../features/home/ui/view/widgets/build_book_image.dart';

class VerticalBooksListViewItem extends StatelessWidget {
  const VerticalBooksListViewItem({
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
          Container(
            width: 80,
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
