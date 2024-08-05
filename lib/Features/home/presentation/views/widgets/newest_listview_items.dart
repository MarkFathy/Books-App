import 'package:books/Features/home/presentation/manager/newest_books_cubit/newest_cubit.dart';
import 'package:books/core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'book_list_view_item.dart';

class NewestBooksListViewItems extends StatelessWidget {
  const NewestBooksListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestCubit, NewestState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: BookListViewItem(
                bookModel: state.books[index],
              ),
            ),
            itemCount: state.books.length,
          );
        } else if (state is NewestBooksError) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
