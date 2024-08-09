import 'package:flutter/material.dart';
import 'package:projetopoo/controllers/spells_controller.dart';
import 'package:projetopoo/models/spells_model.dart';

class Spells extends StatelessWidget {
  const Spells({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Imagem de fundo
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/feiticos.jpg"), // Caminho para a imagem de fundo
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black54, // Aplica uma camada semitransparente sobre a imagem
                  BlendMode.darken,
                ),
              ),
            ),
          ),
          FutureBuilder<List<Spell>>(
            future: fetchSpells(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(
                  child: Text(
                    "Error: ${snapshot.error}",
                    style: const TextStyle(color: Colors.redAccent),
                  ),
                );
              } else {
                return ListView.builder(
                  padding: const EdgeInsets.all(16.0),
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    Spell spell = snapshot.data![index];
                    return Card(
                      color: Colors.black54,
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 16.0,
                        ),
                        title: Text(
                          spell.name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                        subtitle: Text(
                          spell.description,
                          style: TextStyle(
                            color: Colors.grey[300],
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    );
                  },
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
