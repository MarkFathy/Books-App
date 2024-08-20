import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../home/data/models/book_model/ImageLinks.dart';
import '../../../../home/data/models/book_model/VolumeInfo.dart';
import '../../../../home/presentation/views/widgets/book_list_view_item.dart';
import '../../../../home/data/models/book_model/BookModel.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        child: BookListViewItem(
          bookModel: BookModel(
            id: 'id-$index',
            volumeInfo: VolumeInfo(
              title: 'Book Title $index',
              authors: ['Author $index'],
              imageLinks: const ImageLinks(thumbnail: 'https://via.placeholder.com/150', smallThumbnail: ''),
            ),
          ),
        ),
      ),
      itemCount: 10,
    );
  }
}
