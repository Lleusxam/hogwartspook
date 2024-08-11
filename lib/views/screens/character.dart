import 'package:flutter/material.dart';
import 'package:projetopoo/models/character_model.dart';

class CharacterDetailScreen extends StatelessWidget {
  final Character character;

  const CharacterDetailScreen({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(character.name, style: const TextStyle(color: Colors.white)),
        backgroundColor: Colors.black, // Define a cor da AppBar para combinar com o tema
      ),
      body: Stack(
        children: [
          // Imagem de fundo
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/card.jpg"), // Caminho para a imagem de fundo
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.transparent, // Aplica uma camada semitransparente sobre a imagem
                  BlendMode.darken,
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: character.image.isNotEmpty
                        ? Image.network(
                            character.image,
                            height: 300,
                            fit: BoxFit.cover,
                          )
                        : Image.asset(
                            'images/default-photo.png', // Certifique-se de que o caminho esteja correto
                            height: 300,
                            fit: BoxFit.cover,
                          ),
                  ),
                ),
                const SizedBox(height: 16),
                Card(
                  color: Colors.black87.withOpacity(0.7), // Fundo semitransparente
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildDetailRow('Name', character.name),
                        _buildDetailRow('Species', character.species),
                        _buildDetailRow('Ancestry', character.ancestry),
                        _buildDetailRow('Patronus', character.patronus),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text(
            '$label: ',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.white, // Cor do texto
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontSize: 16, color: Colors.white), // Cor do texto
            ),
          ),
        ],
      ),
    );
  }
}
