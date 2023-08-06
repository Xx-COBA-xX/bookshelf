// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookshelf/features/categories/ui/view/widgets/category_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_appbar_title.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: CustomAppBarTitle(
          title: 'Categories',
        ),
        body: CategoryViewBody(),
      ),
    );
  }
}
