import 'package:books/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_app_bar.dart';
import 'featured_books_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            const CustomAppBar(),
            const FeaturedBooksListView(),
          SizedBox(
            height: 50.h,
          ),
          Text(
            'Best Seller',
            style:Styles.titleMedium,
          ),
          BestSellerListViewItem(),



        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: Row(
        children: [
        AspectRatio(
        aspectRatio: 2.5/4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              image:const DecorationImage(image:AssetImage(AssetsData.book1))
          ),
        ),
      ),
         const Column(
            children: [

            ],
          )
        ],
      ),
    );
  }
}





