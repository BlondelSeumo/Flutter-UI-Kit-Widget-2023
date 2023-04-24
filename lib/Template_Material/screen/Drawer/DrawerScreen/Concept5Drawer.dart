import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Animation/FadeAnimation.dart';

import 'Concept1Drawer/Concept1Drawer.dart';

class Concept5Drawer extends StatefulWidget {
  Concept5Drawer();

  @override
  Concept5DrawerState createState() => new Concept5DrawerState();
}

class Concept5DrawerState extends State<Concept5Drawer> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  late BuildContext context;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    Widget widget = Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF313237),
      appBar: new AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF313237),
        title: new Text("Concept 5",
            style: TextStyle(
              fontFamily: "Sofia",
              color: Colors.white,
            )),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            if (scaffoldKey.currentState!.isDrawerOpen) {
              scaffoldKey.currentState!.openEndDrawer();
            } else {
              scaffoldKey.currentState!.openDrawer();
            }
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.close),
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
        actionsIconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: DrawerLayout(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            InkWell(
                onTap: () {},
                child: itemCard(
                  image: "assets/images/category3.jpg",
                  title: "Restaurant",
                )),
            InkWell(
                onTap: () {},
                child: itemCard(
                  image: "assets/images/category5.jpg",
                  title: "Home Made",
                )),
            InkWell(
              onTap: () {},
              child: itemCard(
                image: "assets/images/category6.jpg",
                title: "Street Food",
              ),
            ),
            InkWell(
                onTap: () {},
                child: itemCard(
                  image: "assets/images/category7.jpg",
                  title: "Catering Service",
                )),
          ],
        ),
      ),
    );
    return widget;
  }
}

class itemCard extends StatelessWidget {
  String? image, title;
  itemCard({this.image, this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 10.0, right: 10.0, top: 8.0, bottom: 5.0),
      child: Container(
        height: 140.0,
        width: 400.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        child: Material(
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              image:
                  DecorationImage(image: AssetImage(image!), fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12.withOpacity(0.1),
                  blurRadius: 4.0,
                  spreadRadius: 3.0,
                ),
              ],
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                color: Colors.black12.withOpacity(0.1),
              ),
              child: Center(
                child: Text(
                  title!,
                  style: TextStyle(
                    shadows: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.7),
                          blurRadius: 10.0,
                          spreadRadius: 2.0)
                    ],
                    color: Colors.white,
                    fontFamily: "Sofia",
                    fontWeight: FontWeight.w800,
                    fontSize: 39.0,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

///
/// Layout for drawer
///
class DrawerLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: Color(0xFF29303C),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 250.0,
                width: 250.0,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(350.0)),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      tileMode: TileMode.repeated,
                      colors: [Color(0xFF15EDED), Color(0xFF029CF5)]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70.0, left: 20.0),
                child: Text(
                  "Dashboard",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w900,
                      fontSize: 35.0,
                      color: Colors.white),
                ),
              ),
            ],
          ),
          Flexible(
            child: new ListView(
              children: <Widget>[
                InkWell(
                    onTap: () {},
                    child: itemDrawer(Icons.search, "Coin Search")),
                InkWell(
                    onTap: () {},
                    child: itemDrawer(Icons.style, "Select Investment")),
                InkWell(
                    onTap: () {},
                    child: itemDrawer(
                        Icons.insert_drive_file, "Exchange Screen Layout")),
                SizedBox(
                  height: 3.0,
                )
              ],
            ),
          ),
//
        ],
      ),
    ));
  }
}

///
/// item widget for drawer
///
Widget itemDrawer(IconData icon, String txt) {
  return Padding(
    padding: const EdgeInsets.only(top: 30.0, left: 20.0),
    child: Row(
      children: <Widget>[
        Icon(
          icon,
          size: 25.0,
          color: Colors.lightBlue,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                txt,
                style: TextStyle(color: Colors.white70, fontSize: 15.5),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
              )
            ],
          ),
        )
      ],
    ),
  );
}
