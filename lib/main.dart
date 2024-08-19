import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import 'views/main_screen.dart';
import 'views/house_chosen_page.dart'; 

void main() {
  MyApp app = const MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( 
      home: MainScreen(),
      getPages: [
        GetPage(name: '/', page: () => MainScreen()),
        GetPage(name: '/houseChosen', page: () => const HouseChosenPage()),
      ],
    );
  }
}
