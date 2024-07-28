import 'package:flutter/material.dart';
import 'package:projetopoo/models/character_model.dart';
import 'package:projetopoo/controllers/character_controller.dart';
import 'package:projetopoo/views/screens/character.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Character>>(
        future: fetchCharacters(),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          else if (snapshot.hasError){
            return Center(child: Text("Error: ${snapshot.error}"));
          }
          else {
            return ListView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                Character character = snapshot.data![index];
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CharacterDetailScreen(character: character),
                        ),
                      );
                      },
                    contentPadding: const EdgeInsets.all(10.0),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: character.image.isNotEmpty
                          ? Image.network(
                              character.image,
                              width: 50.0,
                              height: 50.0,
                              fit: BoxFit.cover,
                            )
                          : Image.asset(
                              '../assets/default-photo.png',
                              width: 50.0,
                              height: 50.0,
                              fit: BoxFit.cover,
                            ),
                    ),
                    title: Text(
                      character.name,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      character.house,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey[600],
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                      size: 20.0,
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}