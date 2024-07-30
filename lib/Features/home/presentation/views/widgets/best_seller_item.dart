import 'package:books/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      
      child: SizedBox(
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
            SizedBox(
              width: 30.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text('Harry Potter and the Goblet of Fire ',
                      style: Styles.textStyle20,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,

                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text('J.K Rowling',
                    style: Styles.textStyle14,
                  ),

                  SizedBox(
                    height: 15.h,
                  ),

                  Row(
                    children: [
                      Text('19.99 E',
                        style: Styles.textStyle20.copyWith(
                            fontWeight: FontWeight.bold
                        ),

                      ),
                      const Spacer(),

                      const BookRating(),
                    ],
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


