import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Animation/FadeAnimation.dart';

import 'Concept1Drawer/Concept1Drawer.dart';

class Concept4Drawer extends StatefulWidget {
  Concept4Drawer();

  @override
  Concept4DrawerState createState() => new Concept4DrawerState();
}

class Concept4DrawerState extends State<Concept4Drawer> {
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
      backgroundColor: Colors.white,
      appBar: new AppBar(
          title: new Text("Concept 4"),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ]),
      drawer: Drawer(
        child: Drawer(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: 300,
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 40, horizontal: 4),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.grey[100],
                          child: CircleAvatar(
                            radius: 45,
                            backgroundImage: NetworkImage(
                                "https://celebritypets.net/wp-content/uploads/2016/12/Adriana-Lima.jpg"),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(top: 190, bottom: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Alissa Hearth",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black,
                                    fontSize: 19.0),
                              ),
                              Text(
                                "johnmiller@mail.com",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 16.0),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  title: Text(
                    "Home",
                  ),
                  leading: Icon(Icons.home, size: 25.0, color: Colors.grey),
                ),
                ListTile(
                  title: Text(
                    "Account",
                  ),
                  leading: Icon(Icons.account_circle,
                      size: 25.0, color: Colors.grey),
                ),
                ListTile(
                  title: Text(
                    "Search",
                  ),
                  leading: Icon(Icons.youtube_searched_for,
                      size: 25.0, color: Colors.grey),
                ),
                ListTile(
                  title: Text(
                    "Comment",
                  ),
                  leading:
                      Icon(Icons.add_comment, size: 25.0, color: Colors.grey),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Divider(),
                ListTile(
                  title: Text(
                    "Settings",
                  ),
                  leading: Icon(Icons.settings, size: 25.0, color: Colors.grey),
                ),
                ListTile(
                  title: Text(
                    "Help",
                  ),
                  leading:
                      Icon(Icons.help_outline, size: 25.0, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
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
                )),
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
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              image:
                  DecorationImage(image: AssetImage(image!), fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFABABAB).withOpacity(0.7),
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
