import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Home.dart';

class BottomNavBarPrimary extends StatefulWidget {
  BottomNavBarPrimary();

  @override
  BottomNavBarPrimaryState createState() => new BottomNavBarPrimaryState();
}

class BottomNavBarPrimaryState extends State<BottomNavBarPrimary>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
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
      floatingActionButton: Container(
        margin: EdgeInsets.all(10),
        child: FloatingActionButton(
          backgroundColor: Color(0xFF5FBD84),
          elevation: 2,
          child: Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
          onPressed: () {
            print('Center!');
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
                  tabs: [
                    Container(
                      child: Tab(
                          icon: Icon(Icons.account_circle,
                              color: Color(0xFF5FBD84))),
                      margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                    ),
                    Container(
                      child:
                          Tab(icon: Icon(Icons.home, color: Color(0xFF5FBD84))),
                      margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                    )
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
