import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 48.h,
      child: TextButton(
          onPressed: (){},
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape:  RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r)
          ),

        ),
          child:  Text('19.99E',
            style: Styles.textStyle16.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w900
            ),),
      ),
    );
  }
}
