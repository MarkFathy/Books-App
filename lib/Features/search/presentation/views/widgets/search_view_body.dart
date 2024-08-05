import 'package:books/Features/search/presentation/views/widgets/search_results_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../home/presentation/views/widgets/book_list_view_item.dart';
import 'custom_search_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomSearchTextField(),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
          const SizedBox(
            height: 15,
          ),
          const Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
