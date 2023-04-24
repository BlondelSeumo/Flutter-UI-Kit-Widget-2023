import 'package:flutter/material.dart';

class Concept1Expand extends StatefulWidget {
  Concept1Expand({Key? key}) : super(key: key);

  @override
  _Concept1ExpandState createState() => _Concept1ExpandState();
}

class _Concept1ExpandState extends State<Concept1Expand> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.99),
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Expand Concept 1",
          style: TextStyle(fontFamily: "Sofia", fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 10.0, bottom: 20.0),
              child: Container(
                // height: 280.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12.withOpacity(0.1),
                          blurRadius: 3.0,
                          spreadRadius: 1.0)
                    ]),
                child: Column(children: [
                  Container(
                    height: 165.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          topLeft: Radius.circular(10.0)),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.pexels.com/photos/1410236/pexels-photo-1410236.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                          fit: BoxFit.cover),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black12.withOpacity(0.4),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10.0),
                            topLeft: Radius.circular(10.0)),
                      ),
                      child: Center(
                        child: CircleAvatar(
                            radius: 30.0,
                            backgroundColor: Colors.white54,
                            child: Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                              size: 30.0,
                            )),
                      ),
                    ),
                    alignment: Alignment.topRight,
                  ),
                  ExpansionTile(
                    title: Text(
                      "Fried Rice Egg Ricas Easy Steps",
                      style: TextStyle(fontFamily: "Sofia"),
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, bottom: 15),
                        child: Text(
                          "Fried rice is a quick and delicious way to transform leftovers into something delicious! Though we sometimes think of certain ingredients being typical (eggs, garlic, soy) the only thing you need to make fried rice is heat, rice, and oil.",
                          style: TextStyle(fontFamily: "Sofia"),
                        ),
                      )
                    ],
                  )
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Container(
                height: 200.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1554118811-1e0d58224f24?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Y2FmZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80"),
                        fit: BoxFit.cover)),
              ),
            ),
            ExpansionTile(
              subtitle: Container(
                  height: 30.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                      // color: Colors.blueAccent,
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Text(
                    "Place recommended for working space",
                    style:
                        TextStyle(fontFamily: "Sofia", color: Colors.black38),
                  )),
              title: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  "Caffe Original Taste Kafein",
                  style: TextStyle(fontFamily: "Sofia"),
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, bottom: 20.0),
                  child: Text(
                      "Caffe taste was good place for working! Though we sometimes think of certain ingredients being typical (eggs, garlic, soy) the only thing you need to make fried rice is heat, rice, and oil."),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
