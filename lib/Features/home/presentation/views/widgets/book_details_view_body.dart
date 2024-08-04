import 'package:books/Features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:books/Features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';
import 'books_details_section.dart';
import 'custom_book_details_appbar.dart';



class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                 CustomBookDetailsAppBar(),
                BooksDetailsSection(),

                Expanded(
                  child:  SizedBox(
                    height:40,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                SimilarBooksListView(),
                SizedBox(
                  height: 40,
                ),
                SimilarBooksSection()
              ],
            ),
          ),
        )
      ],
    );
  }
}


