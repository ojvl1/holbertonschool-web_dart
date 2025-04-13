class Password {
  String? _password;

  Password({String? password}) : _password = password;

  bool isValid() {
    final password = _password ?? '';
    final hasUppercase = password.contains(RegExp(r'[A-Z]'));
    final hasLowercase = password.contains(RegExp(r'[a-z]'));
    final hasNumber = password.contains(RegExp(r'[0-9]'));
    final correctLength = password.length >= 8 && password.length <= 16;
    return hasUppercase && hasLowercase && hasNumber && correctLength;
  }

  String? get password => _password;

  set password(String? password) {
    _password = password;
  }

  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}