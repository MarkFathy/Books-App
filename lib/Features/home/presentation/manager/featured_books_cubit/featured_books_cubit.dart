import 'package:books/Features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/book_model/BookModel.dart';


part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  static FeaturedBooksCubit get(context) => BlocProvider.of(context);
  final HomeRepo homeRepo;

  Future<void> getFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.getFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedBooksError(failure.errorMessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
