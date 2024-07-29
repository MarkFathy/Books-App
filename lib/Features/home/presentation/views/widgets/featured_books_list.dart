import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_listview_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height *.27,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index)
          {
            return  Padding(
              padding:  EdgeInsets.symmetric(horizontal: 11.w),
              child:const CustomListViewItem(),
            );
          }
      ),
    );
  }
}
