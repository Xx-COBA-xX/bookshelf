import 'package:flutter/material.dart';

import 'favorite_books_listview.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: FivoratBooksListView(size: size),
        )
      ],
    );
  }
}
