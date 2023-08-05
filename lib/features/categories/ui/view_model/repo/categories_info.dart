import 'package:bookshelf/features/categories/data/model/categories_model.dart';

class CategroiesInfo {
  static final List<CategoriesModel> booksCategories = [
    CategoriesModel(
        categoryName: "Action",
        categoryImage: "assets/icons/action1.svg",
        categoryBooksNo: 44,
        categoryColorNo: 0),
    CategoriesModel(
        categoryName: "Sci-Fi",
        categoryImage: "assets/icons/sci-fi.svg",
        categoryBooksNo: 30,
        categoryColorNo: 1),
    CategoriesModel(
        categoryName: "Thrillers",
        categoryImage: "assets/icons/thrillers.svg",
        categoryBooksNo: 41,
        categoryColorNo: 2),
    CategoriesModel(
        categoryName: "Arts",
        categoryImage: "assets/icons/arts.svg",
        categoryBooksNo: 73,
        categoryColorNo: 3),
    CategoriesModel(
        categoryName: "Biogrphies",
        categoryImage: "assets/icons/biogrphies.svg",
        categoryBooksNo: 12,
        categoryColorNo: 0),
    CategoriesModel(
        categoryName: "Business",
        categoryImage: "assets/icons/business.svg",
        categoryBooksNo: 53,
        categoryColorNo: 1),
    CategoriesModel(
      categoryName: "Romance",
      categoryImage: "assets/icons/romance.svg",
      categoryColorNo: 2,
      categoryBooksNo: 70,
    ),
    CategoriesModel(
      categoryName: "Comedy",
      categoryImage: "assets/icons/comedy.svg",
      categoryBooksNo: 18,
      categoryColorNo: 3

    ),
    CategoriesModel(
      categoryName: "Animasi",
      categoryImage: "assets/icons/animasi.svg",
      categoryBooksNo: 29,
      categoryColorNo: 0

    ),
    CategoriesModel(
      categoryColorNo: 1,
      categoryName: "Reilgion",
      categoryImage: "assets/icons/reilgion.svg",
      categoryBooksNo: 31,
    ),
    CategoriesModel(
      categoryName: "Travel",
      categoryImage: "assets/icons/travel.svg",
      categoryBooksNo: 7,
      categoryColorNo: 2

    ),
    CategoriesModel(
      categoryColorNo: 3,
      categoryName: "Politice",
      categoryImage: "assets/icons/politice.svg",
      categoryBooksNo: 51,
    ),
  ];
}
