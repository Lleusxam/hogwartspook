import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/character_model.dart';

Future<List<Character>> fetchCharacters() async {
  final response = await http.get(Uri.parse('https://hp-api.onrender.com/api/characters'));

  if (response.statusCode == 200) {
    List<dynamic> jsonData = json.decode(response.body);
    return jsonData.map((json) => Character.fromJson(json)).toList();
  }
  else {
    throw Exception("Failed to load characters.");
  }

}