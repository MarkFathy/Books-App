import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'You Can also like',
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
