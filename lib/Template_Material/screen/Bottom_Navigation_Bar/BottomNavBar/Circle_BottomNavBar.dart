
// import 'package:flutter/material.dart';
// import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Brand.dart';
// import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Favorite.dart';
// import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Home.dart';
// import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Profile.dart';

// class CircleBottomNavBar extends StatefulWidget {
//   @override
//   _CircleBottomNavBarState createState() => _CircleBottomNavBarState();
// }

// class _CircleBottomNavBarState extends State<CircleBottomNavBar> {
//   int currentIndex = 0;

//   /// Set a type current number a layout class
//   Widget callPage(int current) {
//     switch (current) {
//       case 0:
//         return new Home();
//       case 1:
//         return new Category();
//       case 2:
//         return new Favorite();
//       case 3:
//         return new Profile();
//         break;
//       default:
//         return Home();
//     }
//   }

//   /// Build BottomNavigationBar Widget
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: callPage(currentIndex),
//       bottomNavigationBar: CircleBottomNavigation(
//         barHeight: 70,
//         circleSize: 65,
//         initialSelection: currentIndex,
//         activeIconColor: Color(0xFF5FBD84),
//         inactiveIconColor: Colors.black38,
//         textColor: Color(0xFF5FBD84),
//         hasElevationShadows: false,
//         tabs: [
//           TabData(
//             icon: Icons.home,
//             iconSize: 25,
//             title: 'Home',
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//           ),
//           TabData(
//             icon: Icons.shop,
//             iconSize: 25,
//             title: 'Category',
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//           ),
//           TabData(
//             icon: Icons.shopping_cart,
//             iconSize: 25,
//             title: 'Favorite',
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//           ),
//           TabData(
//             icon: Icons.person,
//             iconSize: 25,
//             title: 'Account',
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//           ),
//         ],
//         onTabChangedListener: (index) => setState(() => currentIndex = index),
//       ),
//     );
//   }
// }
