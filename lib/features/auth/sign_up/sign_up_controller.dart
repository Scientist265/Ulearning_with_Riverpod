import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ulearning_app/common/global_loader/global_loader.dart';
import 'package:ulearning_app/common/widget/popup_messages.dart';
import 'package:ulearning_app/features/auth/sign_up/providers/register_notifier.dart';

class SignUpController {
  late WidgetRef ref;

  SignUpController({required this.ref});

  void handleSignUP() async {
    var state = ref.read(registerNotifierProvider);
    var context = Navigator.of(ref.context);
    String name = state.userName;
    String email = state.email;

    String password = state.password;
    String rePassword = state.rePassword;

    // if (state.userName.isEmpty || name.isEmpty) {
    //   toastInfo("Name Can't be empty");
    //   return;
    // }

    // if (state.userName.length < 6 || name.length < 6) {
    //   toastInfo("Name is too short");
    //   return;
    // }
    // if (state.email.isEmpty || email.isEmpty) {
    //   toastInfo("email Can't be empty");
    //   return;
    // }

    // if ((state.password.isEmpty != state.rePassword.isEmpty) ||
    //     password.isEmpty != rePassword.isEmpty) {
    //   toastInfo("Password can't be empty");
    //   return;
    // }
    // if ((state.password != state.rePassword) || password != rePassword) {
    //   toastInfo("Password not match");
    //   return;
    // }

// checking loader value  show loading icon
    ref.read(appLoaderProvider.notifier).setLoaderValue(true);
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (kDebugMode) {
        print(credential);
      }
      if (credential.user != null) {
        await credential.user?.sendEmailVerification();
        await credential.user?.updateDisplayName(name);
        // get server photo url

        // set server photo url

        toastInfo(
            "An email has been sent to verify your account. Please open that email and verify your account");
        context.pop();
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        toastInfo("The password is too weak");
      } else if (e.code == "email-already-in-use") {
        toastInfo("This email address has already been register");
      } else if (e.code == "invalid-email") {
        toastInfo("Invalid email format");
      } else if (e.code == "operation-not-allowed") {
        toastInfo("Operation Not allowed");
      } else if (e.code == "user-not-found") {
        toastInfo("User not found");
      }
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
    // End loader icon
    ref.watch(appLoaderProvider.notifier).setLoaderValue(false);
  }
}
