import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Brand.dart';
import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Favorite.dart';
import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Home.dart';
import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Profile.dart';

class ColorChangeBottomNav extends StatefulWidget {
  final List<BottomNav> itemsNav = <BottomNav>[
    BottomNav('Home', Icons.home, Color(0xFF5FBD84)),
    BottomNav('Category', Icons.shop, Colors.greenAccent),
    BottomNav('Favorite', Icons.shopping_cart, Colors.lightGreen),
    BottomNav('Account', Icons.person, Colors.orange)
  ];

  @override
  BottomNavigationShiftingState createState() =>
      BottomNavigationShiftingState();
}

class BottomNavigationShiftingState extends State<ColorChangeBottomNav>
    with TickerProviderStateMixin<ColorChangeBottomNav> {
  int currentIndex = 0;
  late BuildContext ctx;

  void onBackPress() {
    if (Navigator.of(ctx).canPop()) {
      Navigator.of(ctx).pop();
    }
  }

  /// Set a type current number a layout class
  Widget callPage(int current) {
    switch (current) {
      case 0:
        return new Home();
      case 1:
        return new Category();
      case 2:
        return new Favorite();
      case 3:
        return new Profile();
        break;
      default:
        return Home();
    }
  }

  @override
  Widget build(BuildContext context) {
    ctx = context;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: callPage(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue[700],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[400],
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: widget.itemsNav.map((BottomNav d) {
          return BottomNavigationBarItem(
            backgroundColor: d.color,
            icon: Icon(d.icon),
            label: d.title,
          );
        }).toList(),
      ),
    );
  }
}

class BottomNav {
  String title;
  IconData icon;
  Color color;

  BottomNav(this.title, this.icon, this.color);
}
