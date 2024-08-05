import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_listview_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w),
              child: const CustomListViewItem(
                imageUrl:
                    'https://th.bing.com/th/id/OIP.i1XssI9AtbTDLNgJIHDK0QHaFx?rs=1&pid=ImgDetMain',
              ),
            );
          }),
    );
  }
}
