import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Animation/FadeAnimation.dart';

class Concept8List extends StatefulWidget {
  Concept8List({Key? key}) : super(key: key);

  @override
  _Concept8ListState createState() => _Concept8ListState();
}

class _Concept8ListState extends State<Concept8List> {
  @override
  Widget build(BuildContext context) {
    var _appbar = AppBar(
      backgroundColor: Color(0xFFFFFFFF),
      elevation: 0.0,
      centerTitle: true,
      title: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Text(
          "Concept 8 List",
          style: TextStyle(
              fontFamily: "Sofia",
              fontSize: 23.0,
              color: Colors.black,
              fontWeight: FontWeight.w700),
        ),
      ),
      actions: <Widget>[
        InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 20.0),
            child: Icon(
              Icons.search,
              size: 27.0,
              color: Color(0xFF5FBD84),
            ),
          ),
        )
      ],
    );

    return Scaffold(
      backgroundColor: Colors.white,

      // Calling variable appbar
      appBar: _appbar,

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            InkWell(
                onTap: () {},
                child: FadeAnimation(
                  0.2,
                  itemCard(
                    image: "assets/images/category3.jpg",
                    title: "Restaurant",
                  ),
                )),
            InkWell(
                onTap: () {},
                child: FadeAnimation(
                  0.3,
                  itemCard(
                    image: "assets/images/category5.jpg",
                    title: "Home Made",
                  ),
                )),
            InkWell(
                onTap: () {},
                child: FadeAnimation(
                  0.4,
                  itemCard(
                    image: "assets/images/category6.jpg",
                    title: "Street Food",
                  ),
                )),
            InkWell(
                onTap: () {},
                child: FadeAnimation(
                  0.5,
                  itemCard(
                    image: "assets/images/category7.jpg",
                    title: "Catering Service",
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

//
// Create item card
//

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
