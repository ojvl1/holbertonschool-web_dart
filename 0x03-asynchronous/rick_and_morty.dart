import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    String url = 'https://rickandmortyapi.com/api/character';
    while (url.isNotEmpty) {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final results = data['results'];

        for (var character in results) {
          print(character['name']);
        }

        url = data['info']['next'] ?? '';
      } else {
        throw 'Failed to load characters: ${response.statusCode}';
      }
    }
  } catch (e) {
    print('error caught: $e');
  }
}