import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/spells_model.dart';

Future<List<Spell>> fetchSpells() async {
  final response = await http.get(Uri.parse('https://hp-api.onrender.com/api/spells'));

  if (response.statusCode == 200) {
    List<dynamic> jsonData = json.decode(response.body);
    return jsonData.map((json) => Spell.fromJson(json)).toList();
  }
  else {
    throw Exception("Failed to load spells.");
  }

}