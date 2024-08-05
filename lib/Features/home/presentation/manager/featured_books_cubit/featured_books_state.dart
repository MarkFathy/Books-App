part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState {}

final class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books;
  FeaturedBooksSuccess(this.books);
}

class FeaturedBooksError extends FeaturedBooksState {
  final String errorMessage;
  FeaturedBooksError(this.errorMessage);
}
