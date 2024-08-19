import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projetopoo/models/house_model.dart';

class HouseChosenPage extends StatelessWidget {
  const HouseChosenPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<House> houses = [
      House(
        name: 'Grifinória',
        imagePath: 'assets/images/gryffindor.png',
        description: 'Grifinória valoriza a coragem, bravura e determinação.',
      ),
      House(
        name: 'Sonserina',
        imagePath: 'assets/images/slytherin.png',
        description: 'Sonserina valoriza a ambição, astúcia e liderança.',
      ),
      House(
        name: 'Corvinal',
        imagePath: 'assets/images/ravenclaw.png',
        description: 'Corvinal valoriza a inteligência, criatividade e sabedoria.',
      ),
      House(
        name: 'Lufa-Lufa',
        imagePath: 'assets/images/hufflepuff.png',
        description: 'Lufa-Lufa valoriza a lealdade, paciência e trabalho duro.',
      ),
    ];

    int houseIndex = Get.arguments as int;
    House chosenHouse = houses[houseIndex];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child: Text(
            "Wizardpedia <",
            style: TextStyle(
              fontSize: 70,
              color: Colors.white,
              fontFamily: 'MagicSchool',
            ),
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Get.offNamed('/');
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Mantém o tamanho mínimo da coluna
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                chosenHouse.imagePath,
                width: 250,
                height: 250,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 30),
              Text(
                chosenHouse.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontFamily: 'MagicSchool',
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  chosenHouse.description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white54,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
