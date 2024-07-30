import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/styles.dart';
import 'best_seller_listview_items.dart';
import 'custom_app_bar.dart';
import 'featured_books_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              const FeaturedBooksListView(),
              SizedBox(
                height: 50.h,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  'Best Seller',
                  style:Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
           child:Padding(
             padding: EdgeInsets.symmetric(horizontal: 20.w),
             child: const BestSellerListViewItems(),
           ),
        ),
      ],
    );
  }
}







