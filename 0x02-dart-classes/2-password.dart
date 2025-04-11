class Passsword {
  String passsword = '';

  bool isValid() {
    final hasUppercase = passsword.contains(RegExp(r'[A-Z]'));
    final hasLowercase = passsword.contains(RegExp(r'[a-z]'));
    final hasNumber = passsword.contains(RegExp(r'0-9'));
    final correctLength = passsword.length >= 8 && passsword.length <= 16;

    return hasUppercase && hasLowercase && hasNumber && correctLength;
  }

  @override
  String toString() {
    return 'Your Password is: $passsword';
  }
}