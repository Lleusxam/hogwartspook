import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projetopoo/controllers/discover_controller.dart';

class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    // Inicializa o controller
    final HatController controller = Get.put(HatController());

    // Chama o método resetHat no momento da inicialização da tela
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.resetHat();
    });

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
                  'assets/images/chapeu.png',
                  height: 200.0,
                ),
                const SizedBox(height: 20.0,),
                GetBuilder<HatController>(
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
            ),
          ),
        ),
      ),
    );
  }
}
