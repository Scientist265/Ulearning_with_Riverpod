import 'package:flutter/material.dart';
import 'package:ulearning_app/features/auth/sign_in.dart';
import 'package:ulearning_app/features/onboarding/onboarding.dart';

Map<String, Widget Function(BuildContext context)> routes = {

  welcome:(context) => Onboarding(),
  signIn:(context) => SignIn(),
  // signUp:(context) => SignUp(),
};

String welcome = "/Welcome";
String signIn = "/signIn";
String signUp = "/signUP";
String roots = "/roots";
