import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ulearning_app/common/widget/popup_messages.dart';
import 'package:ulearning_app/features/auth/sign_up/providers/register_provider.dart';

class SignUpController {
  late WidgetRef ref;

  SignUpController({required this.ref});

  void handleSignUP() {
    var state = ref.read(registerNotifierProvider);

    String name = state.userName;
    String email = state.email;

    String password = state.password;
    String rePassword = state.rePassword;

    if (state.userName.isEmpty || name.isEmpty) {
      toastInfo("Name Can't be empty");
      return;
    }

    if (state.userName.length < 6 || name.length < 6) {
      toastInfo("Name is too short");
      return;
    }
    if (state.email.isEmpty || email.isEmpty) {
      toastInfo("email Can't be empty");
      return;
    }

    if (state.password != state.rePassword) {
      toastInfo("Password not match");
    }
  }
}
