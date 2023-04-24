import 'package:flutter/material.dart';

class Concept4Appbar extends StatefulWidget {
  Concept4Appbar();

  @override
  Concept4AppbarState createState() => new Concept4AppbarState();
}

class Concept4AppbarState extends State<Concept4Appbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 250.0,
              floating: false,
              pinned: true,
              bottom: PreferredSize(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
                    alignment: Alignment.bottomLeft,
                    constraints: BoxConstraints.expand(height: 50),
                    child: Text(
                      "Concept 4 Appbar",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          fontSize: 22.0,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  preferredSize: Size.fromHeight(50)),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset("assets/images/category5.jpg",
                    fit: BoxFit.cover),
              ),
              centerTitle: true,
              elevation: 0.8,
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ), // overflow menu
              ],
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, right: 20.0, bottom: 10.0),
                  child: Text(
                    "Directions :",
                    style: TextStyle(
                        fontFamily: "Sofia",
                        fontSize: 20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w400,
                      color: Colors.black45,
                      fontSize: 18.0),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                    "anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary making this the first true generator on the Internet.",
                    style: TextStyle(
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w400,
                      color: Colors.black45,
                      fontSize: 18.0,
                    )),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w400,
                      color: Colors.black45,
                      fontSize: 18.0),
                ),
                SizedBox(
                  height: 30.0,
                ),
                InkWell(
                  onTap: () async {},
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 50.0, bottom: 30.0),
                    child: Container(
                      height: 52.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius:
                              BorderRadius.all(Radius.circular(40.0))),
                      child: Center(
                        child: Text(
                          "Saved",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 20.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
