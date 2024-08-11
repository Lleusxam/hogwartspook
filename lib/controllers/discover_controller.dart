import 'package:get/get.dart';

class HatController extends GetxController {
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