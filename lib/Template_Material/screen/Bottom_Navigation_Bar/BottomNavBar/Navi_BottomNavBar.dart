import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Brand.dart';
import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Favorite.dart';
import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Home.dart';
import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Profile.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class NaviBottomNavBar extends StatefulWidget {
  @override
  _NaviBottomNavBarState createState() => _NaviBottomNavBarState();
}

class _NaviBottomNavBarState extends State<NaviBottomNavBar> {
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
            canvasColor: Colors.white,
            textTheme: TextTheme(
                headline1: TextStyle(color: Colors.black38.withOpacity(0.5)))),
        child: BottomNavyBar(
          selectedIndex: currentIndex,
          onItemSelected: (index) {
            setState(() => currentIndex = index);
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
                title: Text('Home'),
                icon: Icon(Icons.home),
                activeColor: Color(0xFF5FBD84),
                inactiveColor: Colors.black38),
            BottomNavyBarItem(
                title: Text('Category'),
                icon: Icon(Icons.shop),
                activeColor: Color(0xFF5FBD84),
                inactiveColor: Colors.black38),
            BottomNavyBarItem(
                title: Text('Favorite'),
                icon: Icon(Icons.shopping_cart),
                activeColor: Color(0xFF5FBD84),
                inactiveColor: Colors.black38),
            BottomNavyBarItem(
                title: Text('Account'),
                icon: Icon(Icons.person),
                activeColor: Color(0xFF5FBD84),
                inactiveColor: Colors.black38),
          ],
        ),
      ),
    );
  }
}
