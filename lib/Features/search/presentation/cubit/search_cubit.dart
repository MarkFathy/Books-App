import 'package:bloc/bloc.dart';
import 'package:books/Features/home/data/repos/home_repo.dart';
import 'package:books/Features/search/presentation/cubit/search_state.dart';


class SearchBooksCubit extends Cubit<SearchBooksState> {
  final HomeRepo homeRepo;

  SearchBooksCubit(this.homeRepo) : super(SearchBooksInitial());

  Future<void> searchBooks(String query) async {
    emit(SearchBooksLoading());
    final result = await homeRepo.getSearchBooks(query: query);
    result.fold(
          (failure) => emit(SearchBooksError(failure.errorMessage)),
          (books) => emit(SearchBooksSuccess(books)),
    );
  }
}
