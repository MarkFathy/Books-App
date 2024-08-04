import 'package:books/Features/home/data/models/book_model/BookModel.dart';
import 'package:books/core/errors/failures.dart';
import 'package:books/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'home_repo.dart';

class HomeRepoImplementation implements HomeRepo {
  final ApiService apiService;

  HomeRepoImplementation(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> getNewestBooks() async {
    try {
      final response = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:programming&Sorting=newest'
      );
      final List<BookModel> books = [];
      for (var item in response['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    }
      catch (e) {
      if(e is DioException){
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
      }
  }

  @override
  Future<Either<Failure, List<BookModel>>> getFeaturedBooks() async {
    // TODO: Implement this method
    throw UnimplementedError();
  }
}