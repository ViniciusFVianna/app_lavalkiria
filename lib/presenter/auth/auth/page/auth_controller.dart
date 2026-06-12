import '../../../../app/utils/command.dart';
enum AuthState { init, loading, success, error }

class AuthController {
  Command<AuthState> state = Command<AuthState>(data: AuthState.init);
  Command<String> email = Command<String>(data: '');
  Command<int> password = Command<int>(data: 0);
  Command<bool> hasEmailError = Command<bool>(data: false);
  Command<bool> hasPasswordError = Command<bool>(data: false);
  RegExp emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  late String emailError = '';
  late String passError = '';

  bool get enabledButon =>
      email.data.isNotEmpty &&
      password.data > 0 &&
      !hasEmailError.data &&
      !hasPasswordError.data;

  void onChageState(AuthState value) {
    state.data = value;
    state.execute();
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      emailError = 'Email is required';
      hasEmailError.data = true;
      hasEmailError.execute();
      return emailError;
    } else if (!emailRegExp.hasMatch(value)) {
      emailError = 'Email is invalid';
      hasEmailError.data = true;
      hasEmailError.execute();
      return emailError;
    }

    hasEmailError.data = false;
    hasEmailError.execute();
    onChangeEmail(value);

    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      passError = 'Password is required';
      hasPasswordError.data = true;
      hasPasswordError.execute();
      return passError;
    } else if (value.length < 6) {
      passError = 'A senha deve ter exatamente 6 dígitos';
      hasPasswordError.data = true;
      hasPasswordError.execute();
      return passError;
    }
    hasPasswordError.data = false;
    hasPasswordError.execute();
    onCangePassword(value);

    return null;
  }

  void onChangeEmail(String value) {
    email.data = value;
    email.execute();
  }

  void onCangePassword(String value) {
    password.data = int.parse(value);
    password.execute();
  }
}
