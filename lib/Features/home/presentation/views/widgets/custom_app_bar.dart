import 'package:books/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 15.w),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 16.h,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                context.push(AppRouter.kSearchView);
              },
              icon: Icon(
                Icons.search,
                size: 33.w,
              ))
        ],
      ),
    );
  }
}
