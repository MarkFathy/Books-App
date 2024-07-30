import 'package:books/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:books/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_book_details_appbar.dart';
import 'custom_listview_item.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;


    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
         const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width *.22),
            child:const CustomListViewItem(),
          ),
          const SizedBox(height: 30),
          Text(
            'The Jungle book',
            style: Styles.textStyle30,
          ),


          Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(color: Colors.grey[500]),
          ),
          SizedBox(
            height: 10.h,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const BooksAction(),
        ],
      ),
    );
  }
}

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomButton()),

      ],
    );
  }
}
