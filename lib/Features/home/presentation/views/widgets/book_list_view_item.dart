import 'package:books/Features/home/data/models/book_model/BookModel.dart';
import 'package:books/core/utils/app_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: 120.h,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: CachedNetworkImage(
                  imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
                  fit: BoxFit.fill,
                  errorWidget: (context, url, error) => const Icon(Icons.error_outline),
                ),
              ),
            ),
            SizedBox(width: 30.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModel.volumeInfo.title ?? 'No Title',
                      style: Styles.textStyle20,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    bookModel.volumeInfo.authors?.isNotEmpty == true
                        ? bookModel.volumeInfo.authors![0]
                        : 'No Author',
                    style: Styles.textStyle14,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,


                  ),
                  SizedBox(height: 15.h),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      BookRating(
                        count: bookModel.volumeInfo.ratingsCount ?? 0,
                        rating: bookModel.volumeInfo.averageRating ?? 0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


