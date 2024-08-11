import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SortingHatController extends GetxController {
  // Lista de frases do Chapéu Seletor
  final List<String> phrases = [
    "Ah, você chegou... eu sou o Chapéu Seletor!",
    "Vou vasculhar sua mente...",
    "Hum... vejo coragem, lealdade...",
    "Já sei exatamente onde você pertence!",
  ];

  // Índice atual da frase
  var currentPhraseIndex = 0;

  // Método para avançar para a próxima frase
  void nextPhrase() {
    if (currentPhraseIndex < phrases.length - 1) {
      currentPhraseIndex++;
      update(); // Atualiza a UI
    } else {
      // Redireciona para a tela da casa escolhida
      Get.offNamed('/houseChosen');
    }
  }
}


class Hat extends StatelessWidget {
  
  const Hat({super.key});
  @override
  Widget build(BuildContext context) {
    // Inicializa o controller
    final SortingHatController controller = Get.put(SortingHatController());

    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: controller.nextPhrase, // Chama o método nextPhrase ao tocar na tela
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/chapeu.gif',
                  height: 200.0,
                ),
                SizedBox(height: 20.0,),
                GetBuilder<SortingHatController>(
              builder: (_) {
                return Text(
                  controller.phrases[controller.currentPhraseIndex],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                );
              },
            ),
              ],
            )
          ),
        ),
      ),
    );
  }
}
