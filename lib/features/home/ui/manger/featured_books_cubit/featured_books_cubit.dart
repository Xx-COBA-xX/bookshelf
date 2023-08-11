// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:bookshelf/features/home/data/models/book_model/book_model.dart';
import 'package:bookshelf/features/home/data/repo/home_repo_imp.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepoImpl) : super(FeaturedBooksInitial());

  final HomeRepoImpl homeRepoImpl;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepoImpl.fetchFeaturedBooks();

    result.fold((fialuer) {
      emit(FeaturedBooksFialuer(fialuer.errorMessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
