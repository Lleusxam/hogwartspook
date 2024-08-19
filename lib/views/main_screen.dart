import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'navigation_bar.dart';
import 'package:projetopoo/controllers/navigationbar_controller.dart';
import 'package:projetopoo/views/screens/home.dart';
import 'package:projetopoo/views/screens/spells.dart';
import 'package:projetopoo/views/screens/discover.dart';
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