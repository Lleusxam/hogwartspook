import 'package:flutter/material.dart';
import 'views/main_screen.dart';

void main() {
  MyApp app = const MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: MainScreen(),
    );

  }

}