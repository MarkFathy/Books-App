import 'package:books/Features/home/data/repos/home_repo.dart';
import 'package:books/Features/home/data/repos/home_repo_implementation.dart';
import 'package:books/Features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:books/Features/home/presentation/views/book_details.view.dart';
import 'package:books/Features/home/presentation/views/home_view.dart';
import 'package:books/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../Features/home/data/models/book_model/BookModel.dart';
import '../../Features/search/presentation/views/search_view.dart';
import '../../Features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/SearchView';

  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashView()),
    GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
    GoRoute(
        path: kBookDetailsView,
        builder: (context, state) =>
            BlocProvider(
              create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImplementation>()),
              child: BookDetailsView(bookModel:state.extra as BookModel,),
            )),

    GoRoute(
        path: kSearchView, builder: (context, state) => const SearchView())
  ]);
}
