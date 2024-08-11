import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../models/character_model.dart';

class CharacterController extends GetxController {
  var characters = <Character>[].obs;
  var filteredCharacters = <Character>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchCharacters();
  }

  Future<void> fetchCharacters() async {
    try {
      isLoading(true);
      final response = await http.get(Uri.parse('https://hp-api.onrender.com/api/characters'));
      if (response.statusCode == 200) {
        List<dynamic> jsonData = json.decode(response.body);
        characters.value = jsonData.map((json) => Character.fromJson(json)).toList();
        filteredCharacters.value = characters; // Inicializa com todos os personagens
      } else {
        throw Exception("Failed to load characters.");
      }
    } catch (e) {
      // Handle error
      print(e);
    } finally {
      isLoading(false);
    }
  }

  void filterCharacters(String query) {
    if (query.isEmpty) {
      filteredCharacters.value = characters;
    } else {
      filteredCharacters.value = characters
          .where((character) => character.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
  }
}
