import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/styles.dart';
import '../../../data/models/book_model/BookModel.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_listview_item.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key,required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomListViewItem(
            imageUrl:
                bookModel.volumeInfo.imageLinks!.thumbnail,
          ),
        ),
        const SizedBox(height: 30),
        Text(
          bookModel.volumeInfo.title ?? '',
          style: Styles.textStyle18,
          textAlign: TextAlign.center,
        ),
        Text(
          bookModel.volumeInfo.authors![0],
          style: Styles.textStyle16.copyWith(color: Colors.grey[500]),
        ),
        SizedBox(
          height: 10.h,
        ),
         BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          count:bookModel.volumeInfo.ratingsCount ??0 ,
           rating: bookModel.volumeInfo.averageRating ??0,
        ),
        const SizedBox(
          height: 30,
        ),
         BooksAction(bookModel: bookModel,),
      ],
    );
  }
}
