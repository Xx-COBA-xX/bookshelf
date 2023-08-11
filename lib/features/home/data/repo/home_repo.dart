import 'package:bookshelf/core/Error/fialuer.dart';
import 'package:bookshelf/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();

  Future<Either<Failure, List<BookModel>>> fetchSimilerBooks();
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
}
