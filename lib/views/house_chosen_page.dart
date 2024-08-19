// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:projetopoo/models/house_model.dart';

// // Suponha que você já tenha importado a classe House e a lista houses

// class HouseChosenPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Recebe o índice da casa escolhida como argumento

//     int houseIndex = Get.arguments as int;
//     House chosenHouse = houses[houseIndex];

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Casa Escolhida'),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Get.offNamed('/');
//           },
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Image.asset(
//               chosenHouse.imagePath,
//               width: 200,
//               height: 200,
//             ),
//             SizedBox(height: 20),
//             Text(
//               chosenHouse.name,
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 10),
//             Text(
//               chosenHouse.description,
//               style: TextStyle(
//                 fontSize: 16,
//                 textAlign: TextAlign.center,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
