import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import '../../../data/models/book_model/BookModel.dart';
import '../../../data/repos/home_repo.dart';

part 'newest_state.dart';

class NewestCubit extends Cubit<NewestState> {
  NewestCubit(this.homeRepo) : super(NewestInitial());
  static NewestCubit get(context) => BlocProvider.of(context);
  final HomeRepo homeRepo;

  Future<void> getNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.getNewestBooks();
    result.fold((failure) {
      emit(NewestBooksError(failure.errorMessage));
    }, (books) {
      emit(NewestBooksSuccess(books));
    });
  }
}
