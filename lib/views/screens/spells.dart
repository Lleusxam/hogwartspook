import 'package:flutter/material.dart';
import 'package:projetopoo/controllers/spells_controller.dart';
import 'package:projetopoo/models/spells_model.dart';
class Spells extends StatelessWidget {
  const Spells({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        
      future: fetchSpells(), 
      
      builder: (context, snapshot) {
        if(snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        else if (snapshot.hasError) {
          return Center(child: Text("Error: ${snapshot.error}"));
        }
        else {
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              Spell spell = snapshot.data![index];
              return ListTile(
                title: Text(spell.name),
                subtitle: Text(spell.description),
              );
            }
            );
        }
      }
      ),
    );
  }
}