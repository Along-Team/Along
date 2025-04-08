import 'package:along/src/routes.dart';
import 'package:along/src/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:toastification/toastification.dart';

// /Sudo name for Along is Alg => AlgColors , AlgFonts
void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 955),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return ToastificationWrapper(
          child: MaterialApp.router(
            title: 'Along App',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              scaffoldBackgroundColor: Colors.white,
              colorScheme: ColorScheme.fromSeed(seedColor: Styles.primaryColor),
              fontFamily: 'Inter',
              useMaterial3: true,
              inputDecorationTheme: const InputDecorationTheme(
                fillColor: Styles.cFAFAFA,
                filled: true,
              ),
            ),
            routerConfig: route,
          ),
        );
      },
    );
  }
}
