import 'package:flutter/cupertino.dart';

import 'book_info.dart';
import 'build_book_image.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    Key? key,
    required this.size,
    this.onPressed,
  }) : super(key: key);

  final Size size;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Container(
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
                child: BookInfo(size: size),
              ),
            )
          ],
        ),
      ),
    );
  }
}
