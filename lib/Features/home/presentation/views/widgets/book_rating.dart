import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key,this.mainAxisAlignment=MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(Icons.star,
          color: Color(0xffFFDD4F),

        ),
        SizedBox(
          width: 6.3.w,
        ),

        Text('4.8',
          style: Styles.textStyle16,
        ),
        SizedBox(
          width: 6.3.w,
        ),

        Text('(2390)',
          style: Styles.textStyle14.copyWith(color:const Color(0xFF707070)),

        )
      ],
    );
  }
}
