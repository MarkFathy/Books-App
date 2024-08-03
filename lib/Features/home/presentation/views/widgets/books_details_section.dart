import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_listview_item.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});


  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width *.2),
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
        const SizedBox(
          height: 30,
        ),
        const BooksAction(),
      ],
    );
  }
}
