part of 'similar_books_cubit.dart';

@immutable
sealed class SimilarBooksState {}

final class SimilarBooksInitial extends SimilarBooksState {}


class SimilarBooksLoadingState extends SimilarBooksState {}
class SimilarBooksSuccessState extends SimilarBooksState {
  final List<BookModel> books;
  SimilarBooksSuccessState(this.books);
}
class SimilarBooksErrorState extends SimilarBooksState {
  final String errorMessage;
  SimilarBooksErrorState(this.errorMessage);
}
