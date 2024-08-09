import 'package:flutter/material.dart';


class MyAppBar extends StatelessWidget implements PreferredSizeWidget{

  const MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
        title: const Center(
          child: Text("Wizardpedia <", style:TextStyle(fontSize: 70,  color: Colors.white, fontFamily: 'MagicSchool'))),
    );
  }
}