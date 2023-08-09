// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/styles.dart';
import 'build_book_image.dart';

class CategoryBookListViewItem extends StatelessWidget {
  const CategoryBookListViewItem({
    Key? key,
    required this.size,
    required this.index,
    this.onPressed,
  }) : super(key: key);
  final Size size;
  final int index;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Container(
        height: size.height > 800 ? 260 : size.height*.31,
        margin: EdgeInsets.only(left: index == 0 ? 16 : 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 4,
              child: SizedBox(
                height: size.height * .23,
                width: 115,
                child: const BuildBookImage(),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(top: 5, left: 3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Author name",
                      style: Style.textStyle13.copyWith(
                          fontSize: size.height < 700 ? size.height / 53 : 13),
                          overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      "Book name",
                      style: Style.textStyle16.copyWith(
                        fontSize: size.height < 700 ? size.height / 41 : 17,
                      ),
                      
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "\$30",
                      style: Style.textStyle16.copyWith(
                        fontSize: size.height < 800 ? size.height / 50 : 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
