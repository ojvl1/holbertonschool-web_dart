class Password {
  String _password = '';

  Password({required String password}) : _password = password;

  bool isValid() {
    final hasUppercase = _password.contains(RegExp(r'[A-Z]'));
    final hasLowercase = _password.contains(RegExp(r'[a-z]'));
    final hasNumber = _password.contains(RegExp(r'[0-9]'));
    final correctLength = _password.length >= 8 && _password.length <= 16;

    return hasUppercase && hasLowercase && hasNumber && correctLength;
  }

  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}