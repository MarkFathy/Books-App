import 'package:books/Features/home/presentation/views/book_details.view.dart';
import 'package:books/Features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

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
        builder: (context, state) => const BookDetailsView()),
    GoRoute(path: kSearchView, builder: (context, state) => const SearchView())
  ]);
}
