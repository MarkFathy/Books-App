import 'package:books/Features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:books/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/search_cubit.dart';
import '../../cubit/search_state.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: const InputDecoration(
            hintText: 'Search books...',
          ),
          onSubmitted: (query) {
            context.read<SearchBooksCubit>().searchBooks(query);
          },
          onChanged: (query) {
            context.read<SearchBooksCubit>().searchBooks(query);
          },
        ),
      ),
      body: BlocBuilder<SearchBooksCubit, SearchBooksState>(
        builder: (context, state) {
          if (state is SearchBooksLoading) {
            return const Center(child: CustomLoadingIndicator());
          } else if (state is SearchBooksSuccess) {
            return ListView.builder(
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: BookListViewItem(bookModel: state.books[index]),
                );
              },
            );
          } else if (state is SearchBooksError) {
            return Center(child: Text(state.message));
          }
          return const Center(child: Text('Search for books'));
        },
      ),
    );
  }
}
