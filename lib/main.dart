import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/config/routes.dart';

void main() async {
  runApp(
    const ProviderScope(
      child: UlearningApp(),
    ),
  );
}

class UlearningApp extends StatelessWidget {
  const UlearningApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 825),
      builder: ((context, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: welcome,
            routes: routes,
          )),
    );
  }
}
