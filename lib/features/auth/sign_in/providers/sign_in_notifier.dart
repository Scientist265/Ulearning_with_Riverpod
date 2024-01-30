import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ulearning_app/features/auth/sign_in/providers/sign_in_state.dart';

// state notifier saves state
class SignInNotifier extends StateNotifier<SignInState> {
  SignInNotifier() : super(const SignInState());

  void onEmailChange(String email) {
    state = state.copyWith(email: email);
  }

  void onPasswordChange(String password) {
    state = state.copyWith(password: password);
  }
}

final  signInNotifierProvider = StateNotifierProvider<SignInNotifier,SignInState>((ref) => SignInNotifier());

