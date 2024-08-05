import 'package:books/Features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:books/Features/home/presentation/manager/newest_books_cubit/newest_cubit.dart';
import 'package:books/constants.dart';
import 'package:books/core/utils/app_router.dart';
import 'package:books/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Features/home/data/repos/home_repo_implementation.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
                create: (context) =>
                    FeaturedBooksCubit(getIt.get<HomeRepoImplementation>())
                      ..getFeaturedBooks()),
            BlocProvider(
                create: (context) =>
                    NewestCubit(getIt.get<HomeRepoImplementation>())
                      ..getNewestBooks())
          ],
          child: MaterialApp.router(
            routerConfig: AppRouter.router,
            debugShowCheckedModeBanner: false,
            theme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: kPrimaryColor,
              textTheme:
                  GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
            ),
          ),
        );
      },
    );
  }
}
