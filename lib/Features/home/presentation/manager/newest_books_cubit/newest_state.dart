part of 'newest_cubit.dart';

@immutable
sealed class NewestState {}

final class NewestInitial extends NewestState {}

class NewestBooksLoading extends NewestState {}

class NewestBooksSuccess extends NewestState {
  final List<BookModel> books;
  NewestBooksSuccess(this.books);
}

class NewestBooksError extends NewestState {
  final String errorMessage;
  NewestBooksError(this.errorMessage);
}
