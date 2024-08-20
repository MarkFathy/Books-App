import 'package:books/Features/search/presentation/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:books/Features/search/presentation/cubit/search_cubit.dart';
import 'package:books/Features/home/data/repos/home_repo.dart';
import 'package:books/Features/home/data/repos/home_repo_implementation.dart';
import '../../../../../core/utils/service_locator.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchBooksCubit(getIt.get<HomeRepoImplementation>()),
      child: const SafeArea(
        child: Scaffold(
          body: SearchViewBody(),
        ),
      ),
    );
  }
}
