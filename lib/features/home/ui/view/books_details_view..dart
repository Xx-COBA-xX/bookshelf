import 'package:bookshelf/core/utils/color.dart';
import 'package:bookshelf/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'widgets/book_details_view_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      appBar: CustomDetailsAppBar(),
      body: BooksDetailsViewBody(),
    ));
  }
}

class CustomDetailsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 16, right: 16),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CupertinoButton(
              padding: EdgeInsets.zero,
              child: const Icon(
                Icons.arrow_back_ios,
                size: 30,
                color: kTextColor,
              ),
              onPressed: () {
                GoRouter.of(context).pop();
              },
            ),
            Text(
              "Book Details",
              style: Style.textStyle24.copyWith(fontWeight: FontWeight.w600),
            ),
            const SizedBox(),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(90);
}
