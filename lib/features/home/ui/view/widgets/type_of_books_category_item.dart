import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/books_category_model.dart';

class TypeOfBooksCategoryItem extends StatelessWidget {
  const TypeOfBooksCategoryItem({
    Key? key,
    required this.index,
    required this.currentIndex,
    this.onPressed,
  }) : super(key: key);
  final int index;
  final int currentIndex;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      padding: EdgeInsets.zero,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        margin: const EdgeInsets.only(left: 16),
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: index == currentIndex ? kPrimaryColor : white,
        ),
        child: Text(
          booksCategory[index],
          style: Style.textStyle16.copyWith(
            color: index == currentIndex ? white : kTextColor,
          ),
        ),
      ),
    );
  }
}
