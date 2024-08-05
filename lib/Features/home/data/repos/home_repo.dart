import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../models/book_model/BookModel.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> getFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> getNewestBooks();
}
