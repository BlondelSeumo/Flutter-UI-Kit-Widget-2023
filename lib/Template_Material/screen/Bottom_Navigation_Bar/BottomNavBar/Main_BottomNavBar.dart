import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Home.dart';

class BottomNavBarMain extends StatefulWidget {
  BottomNavBarMain();

  @override
  BottomNavBarMainState createState() => new BottomNavBarMainState();
}

class BottomNavBarMainState extends State<BottomNavBarMain>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this, initialIndex: 2);
    _tabController!.addListener(() {});
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Home(),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              margin: EdgeInsets.all(0),
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: TabBar(
                  indicatorColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorWeight: 1,
                  unselectedLabelColor: Colors.black38,
                  labelColor: Color(0xFF5FBD84),
                  tabs: [
                    Tab(icon: Icon(Icons.home, size: 21)),
                    Tab(icon: Icon(Icons.shop, size: 21)),
                    FloatingActionButton(
                      backgroundColor: Color(0xFF5FBD84),
                      elevation: 3,
                      onPressed: () {},
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                    Tab(icon: Icon(Icons.shopping_cart, size: 21)),
                    Tab(icon: Icon(Icons.person, size: 21)),
                  ],
                  controller: _tabController,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
