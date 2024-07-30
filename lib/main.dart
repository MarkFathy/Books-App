import 'package:books/constants.dart';
import 'package:books/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      builder: (context, child) {
        return  MaterialApp.router(
          routerConfig:AppRouter.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark(). copyWith(scaffoldBackgroundColor: kPrimaryColor,
            textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
          ),
        );
      },
    );
  }
}

