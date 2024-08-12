import 'package:books/Features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:books/Features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data/models/book_model/BookModel.dart';
import 'books_details_section.dart';
import 'custom_book_details_appbar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                BooksDetailsSection(bookModel: bookModel,),
                Expanded(
                  child: SizedBox(
                    height: 40.h,
                  ),
                ),
                const SimilarBooksSection(),
                SizedBox(
                  height: 16.h,
                ),
                const SimilarBooksListView(),
                SizedBox(
                  height: 40.h,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
