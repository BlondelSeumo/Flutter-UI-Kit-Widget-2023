import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/Card/Model/ConceptModel.dart';

class ConceptCard7 extends StatefulWidget {
  ConceptCard7({Key? key}) : super(key: key);

  @override
  _ConceptCard7State createState() => _ConceptCard7State();
}

class _ConceptCard7State extends State<ConceptCard7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.99),
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Concept 7",
          style: TextStyle(fontFamily: "Sofia", fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            card1(),
            SizedBox(
              height: 20.0,
            ),
            card2(),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
              ),
              child: Container(
                height: 200.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    SizedBox(
                      width: 20.0,
                    ),
                    InkWell(
                      onTap: () {},
                      child: card3(
                        colorTop: Color(0xFFF07DA4),
                        colorBottom: Color(0xFFF5AE87),
                        image: "assets/icon/amerika.png",
                        title: "America",
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: card3(
                          colorTop: Color(0xFF63CCD1),
                          colorBottom: Color(0xFF75E3AC),
                          image: "assets/icon/thailand.png",
                          title: "Thailand"),
                    ),
                    InkWell(
                      onTap: () {},
                      child: card3(
                          colorTop: Color(0xFF9183FC),
                          colorBottom: Color(0xFFDB8EF6),
                          image: "assets/icon/england.png",
                          title: "England"),
                    ),
                    InkWell(
                      onTap: () {},
                      child: card3(
                          colorTop: Color(0xFF56B4EE),
                          colorBottom: Color(0xFF59CCE1),
                          image: "assets/icon/italia.png",
                          title: "Italia"),
                    ),
                    InkWell(
                      onTap: () {},
                      child: card3(
                          colorTop: Color(0xFFF07DA4),
                          colorBottom: Color(0xFFF5AE87),
                          image: "assets/icon/spanyol.png",
                          title: "Spanyol"),
                    ),
                    InkWell(
                      onTap: () {},
                      child: card3(
                          colorTop: Color(0xFF63CCD1),
                          colorBottom: Color(0xFF75E3AC),
                          image: "assets/icon/paris.png",
                          title: "Paris"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget card1() {
  return Padding(
    padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
    child: Stack(
      children: <Widget>[
        Material(
          child: Container(
            height: 390.0,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.pexels.com/photos/4819820/pexels-photo-4819820.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                    fit: BoxFit.cover),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12.withOpacity(0.1),
                      spreadRadius: 0.2,
                      blurRadius: 0.5)
                ]),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 40.0),
          child: Container(
            width: 210.0,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.black12.withOpacity(0.1),
                  spreadRadius: 0.2,
                  blurRadius: 0.5)
            ]),
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "Sea Hotel Merge Warriot",
                    style: TextStyle(
                        fontSize: 21.0,
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    "Honolulu",
                    style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w400,
                        color: Colors.black45),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    "10 November 2021",
                    style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w400,
                        color: Colors.black45),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 34.0,
                        width: 110.0,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        child: Center(
                          child: Text(
                            "View",
                            style: TextStyle(
                                fontFamily: "Sofia",
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget card2() {
  return Padding(
    padding:
        const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0, bottom: 5.0),
    child: Container(
      height: 120.0,
      width: 340.0,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          boxShadow: [
            BoxShadow(
                blurRadius: 10.0,
                spreadRadius: 2.0,
                color: Colors.black.withOpacity(0.08))
          ]),
      child: Row(
        children: <Widget>[
          Material(
            color: Colors.transparent,
            child: Container(
              height: 140.0,
              width: 110.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      bottomLeft: Radius.circular(15.0)),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.pexels.com/photos/4917096/pexels-photo-4917096.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                      fit: BoxFit.cover)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    width: 150.0,
                    child: Text(
                      "Mountain Rinopus",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 17.0),
                      overflow: TextOverflow.ellipsis,
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        size: 14.0,
                        color: Colors.deepPurpleAccent,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Container(
                        width: 140.0,
                        child: Text(
                          "United Kingdom",
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 14.5,
                              fontFamily: "Sofia",
                              fontWeight: FontWeight.w400),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.deepPurpleAccent,
                                size: 21.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.deepPurpleAccent,
                                size: 21.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.deepPurpleAccent,
                                size: 21.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.deepPurpleAccent,
                                size: 21.0,
                              ),
                              Icon(
                                Icons.star_half,
                                color: Colors.deepPurpleAccent,
                                size: 21.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

class card3 extends StatelessWidget {
  Color? colorTop, colorBottom;
  String? image, title;
  card3({this.colorTop, this.colorBottom, this.title, this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4.0, right: 4.0, bottom: 4.0),
      child: Container(
        height: 200.0,
        width: 130.0,
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(blurRadius: 8.0, color: Colors.black12)],
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          gradient: LinearGradient(
              colors: [colorTop!, colorBottom!],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
              child: Text(
                title!,
                style: TextStyle(
                    color: Colors.white, fontFamily: "Sofia", fontSize: 18.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset(
                    image!,
                    height: 90,
                    color: Colors.white,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
