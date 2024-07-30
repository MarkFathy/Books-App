
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'best_seller_item.dart';

class BestSellerListViewItems extends StatelessWidget {
  const BestSellerListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics:const NeverScrollableScrollPhysics(),
      itemBuilder: (context,index)=>Padding(
        padding:  EdgeInsets.symmetric(vertical: 10.h),
        child: const BestSellerItem(),
      ),
      itemCount: 10,


    );
  }
}
