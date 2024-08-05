import 'package:books/Features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:books/core/widgets/custom_error_widget.dart';
import 'package:books/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_listview_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .27,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 11.w),
                    child: CustomListViewItem(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks!.thumbnail,
                    ),
                  );
                }),
          );
        } else if (state is FeaturedBooksError) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
