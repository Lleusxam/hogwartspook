import 'dart:math';
import 'package:get/get.dart';

class HatController extends GetxController {
  // Lista de frases do Chapéu Seletor
  final List<String> phrases = [
    "Ah, você chegou... eu sou o Chapéu Seletor!",
    "Vou vasculhar sua mente...",
    "",
    "",
    "Já sei exatamente onde você pertence!",
  ];

  // Índice atual da frase
  var currentPhraseIndex = 0;

  void resetHat() {
    currentPhraseIndex = 0;
    decideHouse(); // Escolhe uma nova casa
    update(); // Atualiza a UI para refletir o reset
  }

  void decideHouse() {
    var aux = Random().nextInt(4); // 0 a 3 para as quatro possibilidades

    if(aux == 0) {
      phrases[2] = "Hum... vejo bravura, mas também um senso de justiça e ambição...";
      phrases[3] = "Ah, e não posso deixar de notar sua inteligência e lealdade...";
    
    } else if(aux == 1) {
      phrases[2] = "Hum... vejo coragem, mas também uma mente afiada...";
      phrases[3] = "Ah, e aqui está, um espírito ambicioso e uma lealdade inabalável...";
    
    } else if(aux == 2) {
      phrases[2] = "Hum... vejo inteligência, mas também um coração destemido...";
      phrases[3] = "Ah, e não posso esquecer de sua determinação e paciência...";
    
    } else if(aux == 3) {
      phrases[2] = "Hum... vejo astúcia, mas também uma alma curiosa e corajosa...";
      phrases[3] = "Ah, e uma dedicação que é difícil de ignorar...";
    }
  }

  // Método para avançar para a próxima frase
  void nextPhrase() {
    if (currentPhraseIndex == 0) {
      decideHouse();
    }
    if (currentPhraseIndex < phrases.length - 1) {
      currentPhraseIndex++;
      update(); // Atualiza a UI
    } else {
      // Redireciona para a tela da casa escolhida
      int randomValue = Random().nextInt(4); // 0 a 3 para as quatro casas
      Get.offNamed('/houseChosen', arguments: randomValue);
    }
  }
}
