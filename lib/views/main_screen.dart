import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'navigation_bar.dart';
import '../controllers/navigationbar_controller.dart';
import './screens/home.dart';
import './screens/spells.dart';
import 'screens/discover.dart';
import 'appbar.dart';

class MainScreen extends StatelessWidget{
  MainScreen({super.key});

  final NavigationController _navigationController = Get.put(NavigationController());

  final List<Widget> _pages =[
    const Home(),
    const Spells(),
    const Discover(),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Obx(() {
        return _pages[_navigationController.currentIndex.value];
      }),
      bottomNavigationBar: NavBar(),
      );
  }
}