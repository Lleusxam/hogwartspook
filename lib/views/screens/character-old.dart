import 'package:flutter/material.dart';
import 'package:projetopoo/models/character_model.dart';

class CharacterDetailScreen extends StatelessWidget {
  final Character character;

  const CharacterDetailScreen({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(character.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                character.image,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Name: ${character.name}',
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              'Species: ${character.species}',
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              'Ancestry: ${character.ancestry}',
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              'Patronus: ${character.patronus}',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
