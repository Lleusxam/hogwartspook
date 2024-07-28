import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/navigationbar_controller.dart';

class NavBar extends StatelessWidget {
  NavBar({super.key});

  final NavigationController _navigationController = Get.find<NavigationController>();
  

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return BottomNavigationBar(
         currentIndex: _navigationController.currentIndex.value,
          onTap: (index) {
            _navigationController.changePage(index);
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Spells'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
          ]
      );
    }
    );
  }
}