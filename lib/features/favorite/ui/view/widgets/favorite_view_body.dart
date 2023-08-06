import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_appbar_title.dart';
import 'favorite_books_listview.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          expandedHeight: 80,
          title:  CustomAppBarTitle(title: "My Favorite"),
        ),
        SliverToBoxAdapter(
          child: FivoratBooksListView(size: size),
        )
      ],
    );
  }
}
