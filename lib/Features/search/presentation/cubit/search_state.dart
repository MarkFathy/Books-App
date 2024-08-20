
import 'package:equatable/equatable.dart';
import '../../../home/data/models/book_model/BookModel.dart';

abstract class SearchBooksState extends Equatable {
  const SearchBooksState();

  @override
  List<Object> get props => [];
}

class SearchBooksInitial extends SearchBooksState {}

class SearchBooksLoading extends SearchBooksState {}
class SearchBooksSuccess extends SearchBooksState {
  final List<BookModel> books;

  const SearchBooksSuccess(this.books);

  @override
  List<Object> get props => [books];
}
class SearchBooksError extends SearchBooksState {
  final String message;

  const SearchBooksError(this.message);

  @override
  List<Object> get props => [message];
}
