import 'package:books/Features/home/data/models/book_model/BookModel.dart';
import 'package:books/core/functions/launch_url.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
            backGroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.r),
                bottomLeft: Radius.circular(16.r)),
            text: bookModel.saleInfo!.saleability ?? 'Free',
          )),
          Expanded(
              child: CustomButton(
                onPressed: ()async{
                  await launchCustomUrl(context, bookModel.volumeInfo.previewLink!);
                  // Uri uri = Uri.parse(bookModel.volumeInfo.previewLink!);
                  // if (await canLaunchUrl(uri)) {
                  //   await launchUrl(uri);
                  // } else {
                  //   ScaffoldMessenger.of(context).showSnackBar(
                  //     const SnackBar(content: Text('Cannot open the link')),
                  //   );
                  // }

                },
            backGroundColor: const Color(0xFFEF8262),
            textColor: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(16.r),
                bottomRight: Radius.circular(16.r)),
            text: getText(bookModel),
          )),
        ],
      ),
    );
  }
}
String getText(BookModel bookModel){
  if(bookModel.volumeInfo.previewLink==null)
    {
      return 'Not Available';
    }else{
    return 'Preview';
  }

}