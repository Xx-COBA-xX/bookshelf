import 'package:bloc/bloc.dart';
import 'package:bookshelf/features/home/data/models/book_model/book_model.dart';
import 'package:bookshelf/features/home/data/repo/home_repo_imp.dart';
import 'package:equatable/equatable.dart';

part 'similer_books_state.dart';

class SimilerBooksCubit extends Cubit<SimilerBooksState> {
  SimilerBooksCubit(this.homeRepoImpl) : super(SimilerBooksInitial());

  final HomeRepoImpl homeRepoImpl;

  Future<void> fetchSimilerBooks() async {
    emit(SimilerBooksLoading());
    var result = await homeRepoImpl.fetchSimilerBooks();

    result.fold((fialure) {
      emit(SimilerBooksFialuer(fialure.errorMessage));
    }, (books) {
      emit(SimilerBooksSuccess(books));
    });
  }
}
