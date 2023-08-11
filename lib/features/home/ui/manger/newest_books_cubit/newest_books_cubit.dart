import 'package:bloc/bloc.dart';
import 'package:bookshelf/features/home/data/models/book_model/book_model.dart';
import 'package:bookshelf/features/home/data/repo/home_repo_imp.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepoImpl) : super(NewestBooksInitial());

  final HomeRepoImpl homeRepoImpl;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());

    var result = await homeRepoImpl.fetchNewestBooks();

    result.fold((fialuer) {
      emit(NewestBooksFialuer(fialuer.errorMessage));
    }, (books) {
      emit(NewestBooksSuccess(books));
    });
  }
}
