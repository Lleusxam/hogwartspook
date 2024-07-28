import 'package:flutter/material.dart';
import 'package:projetopoo/models/character_model.dart';
import 'package:projetopoo/controllers/character_controller.dart';

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
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                Character character = snapshot.data![index];
                return ListTile(
                  leading: character.image.isNotEmpty ? Image.network(character.image) : Image.asset('../assets/default-photo.png'),
                  title: Text(character.name),
                  subtitle: Text(character.house)
                );
              },
            );
          }
        },
      ),
    );
  }
}