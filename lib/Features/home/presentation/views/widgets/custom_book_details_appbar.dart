import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: Icon(
                Icons.close,
                size: 25.w,
              )),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                size: 25.w,
              ))
        ],
      ),
    );
  }
}
