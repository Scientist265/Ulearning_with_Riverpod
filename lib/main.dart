import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/config/routes.dart';
import 'package:ulearning_app/common/utils/app_styles.dart';
import 'package:ulearning_app/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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
            theme: AppTheme.appThemeData,
            initialRoute: signIn,
            routes: routes,
          )),
    );
  }
}
