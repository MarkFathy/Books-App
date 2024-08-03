import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../home/presentation/views/widgets/book_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics:const BouncingScrollPhysics(),
      itemBuilder: (context,index)=>Padding(
        padding:  EdgeInsets.symmetric(vertical: 10.h),
        child: const BookListViewItem(),
      ),
      itemCount: 10,


    );
  }
}
