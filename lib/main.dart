import 'package:flutter/material.dart';
import 'package:ulearning_app/pages/onboarding/onboarding.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Onboarding(),
    );
  }
}
