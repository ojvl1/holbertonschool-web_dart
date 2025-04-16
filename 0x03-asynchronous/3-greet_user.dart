import 'dart:convert';
import '3-util.dart';

Future<String> greetUser() async {
  try {
    final String data = await fetchUserData();
    final Map<String, dynamic> user = jsonDecode(data);
    final String username = user['username'];
    return 'Hello $username';
  } catch (error) {
    return 'error caught: $error';
  }
}

Future<String> loginUser() async {
  try {
    final bool result = await checkCredentials();
    print('There is a user: $result');
    if (result) {
      return await greetUser();
    } else {
      return 'Wrong credentials';
    }
  } catch (error) {
    return 'error caught: $error';
  }
}