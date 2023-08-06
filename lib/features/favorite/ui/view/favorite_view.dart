// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookshelf/core/widgets/custom_appbar_title.dart';
import 'package:flutter/material.dart';

import 'widgets/favorite_view_body.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      appBar:  CustomAppBarTitle(title: "My Favorite"),

      body: CartViewBody(),
    ));
  }
}
