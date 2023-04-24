import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Brand.dart';
import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Favorite.dart';
import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Home.dart';
import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Profile.dart';

class BottomNavigationIcon extends StatefulWidget {
  BottomNavigationIcon();

  @override
  BottomNavigationIconState createState() => new BottomNavigationIconState();
}

class BottomNavigationIconState extends State<BottomNavigationIcon>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _tabController.addListener(() {});
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: callPage(currentIndex),
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              canvasColor: Colors.white,
              textTheme: TextTheme(
                  headline1: TextStyle(color: Colors.white.withOpacity(0.5)))),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            fixedColor: Color(0xFF5FBD84),
            onTap: (value) {
              currentIndex = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                label: "",
                icon: Icon(
                  Icons.home,
                  size: 23.0,
                ),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: Icon(Icons.shop),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: Icon(Icons.shopping_cart),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: Icon(
                  Icons.person,
                  size: 24.0,
                ),
              ),
            ],
          )),
    );
  }
}
