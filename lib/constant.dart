import 'package:bookshelf/features/categories/ui/view/categories_view.dart';
import 'package:bookshelf/features/favorite/ui/view/favorite_view.dart';
import 'package:bookshelf/features/home/ui/view/widgets/home_view_body.dart';
import 'package:bookshelf/features/library/ui/view/my_library_view.dart';
import 'package:bookshelf/features/profile/ui/view/profile_view.dart';
import 'package:flutter/material.dart';

const mainSize = SizedBox(
  height: 32,
);

final List<Widget> appViews = [
  const HomeViewBody(),
  const CategoriesView(),
  const MyLibraryView(),
  const FavoriteView(),
  const ProfileView()
  
];
OutlineInputBorder myBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none);
}
