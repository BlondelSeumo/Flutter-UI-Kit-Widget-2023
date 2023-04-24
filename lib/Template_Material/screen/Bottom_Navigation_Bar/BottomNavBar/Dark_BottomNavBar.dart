import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Brand.dart';
import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Favorite.dart';
import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Home.dart';
import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Profile.dart';

class DarkBottomNavBar extends StatefulWidget {
  @override
  _DarkBottomNavBarState createState() => _DarkBottomNavBarState();
}

class _DarkBottomNavBarState extends State<DarkBottomNavBar> {
  int currentIndex = 0;

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

  /// Build BottomNavigationBar Widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: callPage(currentIndex),
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.black,
            textTheme: TextTheme(
                headline1: TextStyle(color: Colors.white.withOpacity(0.5))),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            unselectedItemColor: Colors.white24,
            fixedColor: Colors.white,
            onTap: (value) {
              currentIndex = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 23.0,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shop),
                label: "Category",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: "Favorite",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  size: 24.0,
                ),
                label: "Account",
              ),
            ],
          )),
    );
  }
}
