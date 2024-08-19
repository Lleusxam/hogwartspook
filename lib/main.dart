import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Se você estiver usando GetX
import 'views/main_screen.dart';
import 'views/house_chosen_page.dart'; // Crie e importe sua tela HouseChosenPage

void main() {
  MyApp app = const MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( // Use GetMaterialApp se estiver usando GetX
      home: MainScreen(),
      getPages: [
        GetPage(name: '/', page: () => MainScreen()),
        // GetPage(name: '/houseChosen', page: () => HouseChosenPage()),
      ],
    );
  }
}
