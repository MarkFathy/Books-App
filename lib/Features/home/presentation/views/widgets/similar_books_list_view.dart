import 'package:books/Features/home/data/models/book_model/BookModel.dart';
import 'package:books/Features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:books/core/utils/app_router.dart';
import 'package:books/core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'custom_listview_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksLoadingState) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is SimilarBooksSuccessState) {
          if (state.books.isEmpty) {
            return const Center(child: Text('No similar books available.'));
          }
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.w),
                  child: GestureDetector(
                    onTap: () {
                      context.push(
                        AppRouter.kBookDetailsView,
                        extra: state.books[index],
                      );
                    },
                    child: CustomListViewItem(
                      imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail ?? '',
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksErrorState) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
