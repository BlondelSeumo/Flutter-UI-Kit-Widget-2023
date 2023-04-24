import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/Card/Model/ConceptModel.dart';

class ConceptCard4 extends StatefulWidget {
  ConceptCard4({Key? key}) : super(key: key);

  @override
  _ConceptCard4State createState() => _ConceptCard4State();
}

class _ConceptCard4State extends State<ConceptCard4> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.99),
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Concept 4",
          style: TextStyle(fontFamily: "Sofia", fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      _cardGroup(_width / 2.2, 200.0, "Fash Food", "325",
                          "https://images.pexels.com/photos/4193871/pexels-photo-4193871.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                      SizedBox(
                        height: 10.0,
                      ),
                      _cardGroup(_width / 2.2, 250.0, "Healty Food", "525",
                          "https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      _cardGroup(_width / 2.2, 250.0, "Vegetarian", "525",
                          "https://images.pexels.com/photos/1028598/pexels-photo-1028598.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                      SizedBox(
                        height: 10.0,
                      ),
                      _cardGroup(_width / 2.2, 200.0, "Low Cardio", "525",
                          "https://images.pexels.com/photos/949067/pexels-photo-949067.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 220.0,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                _cardFood2(),
                _cardFood2(),
              ]),
            ),
            Container(
              height: 260.0,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                cardShop1(),
                cardShop1(),
                cardShop1(),
              ]),
            ),
            Container(
              height: 340.0,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                cardShop2(),
                cardShop2(),
                cardShop2(),
              ]),
            ),
            Container(
              height: 290.0,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                cardShop3(),
                cardShop3(),
                cardShop3(),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Widget _cardGroup(double _width, double _height, String _title,
      String _person, String _image) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: _height,
        width: _width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  _image,
                ),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 10.0,
              bottom: 10.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    _title,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w700,
                        fontSize: 18.0,
                        shadows: [
                          BoxShadow(
                              color: Colors.black,
                              blurRadius: 4.0,
                              spreadRadius: 10.0)
                        ]),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white.withOpacity(0.5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 5.0, bottom: 5.0, left: 10.0, right: 10.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.people,
                            color: Colors.white,
                          ),
                          Text(
                            _person + " People",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Sofia",
                                fontWeight: FontWeight.w700,
                                shadows: [
                                  BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 4.0,
                                      spreadRadius: 10.0)
                                ]),
                          ),
                          SizedBox(
                            width: 3.0,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _cardFood2() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            child: Container(
              height: 110.0,
              width: 180.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.pexels.com/photos/4601975/pexels-photo-4601975.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                    fit: BoxFit.cover),
                boxShadow: [BoxShadow(blurRadius: 0.0, color: Colors.black87)],
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                gradient: LinearGradient(
                    colors: [Colors.white, Colors.white],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: ingredients.map((item) => new Text(item)).toList()),
          Container(
            width: 170.0,
            child: Text(
              "Yougurt Blueberry Chips Blue",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Sofia",
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
            height: 2.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 2.2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.query_builder,
                      size: 18.0,
                      color: Colors.black26,
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      "20 Minute",
                      style: TextStyle(
                          color: Colors.black45,
                          fontFamily: "Sofia",
                          fontSize: 14.0,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.whatshot,
                      size: 18.0,
                      color: Colors.black26,
                    ),
                    Text(
                      "100 Cal",
                      style: TextStyle(
                          color: Colors.black45,
                          fontFamily: "Sofia",
                          fontSize: 14.0,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.star,
                size: 20.0,
                color: Colors.yellow,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: Text(
                  "4.4",
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Sofia",
                      fontSize: 14.0),
                ),
              ),
              SizedBox(
                width: 35.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// Component Card item in gridView after done loading image
class cardShop2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        color: Colors.black12.withOpacity(0.1),
                        spreadRadius: 0.2,
                        blurRadius: 0.5)
                  ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      /// Animation image header to flashSaleDetail.dart
                      Material(
                        child: InkWell(
                          onTap: () {},
                          child: SizedBox(
                            child: Image.network(
                              "https://i.pinimg.com/736x/e9/87/0a/e9870ad451cbe8bc450f46c0de7bd26f.jpg",
                              fit: BoxFit.cover,
                              height: 140.0,
                              width: mediaQueryData.size.width / 2.1,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 8.0, right: 3.0, top: 15.0),
                        child: Container(
                          width: mediaQueryData.size.width / 2.7,
                          child: Text(
                            "T-Shirt Anime Cassual",
                            style: TextStyle(
                                fontSize: 10.5,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Sofia"),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0, top: 5.0),
                        child: Text("\$15.00",
                            style: TextStyle(
                                fontSize: 10.5,
                                decoration: TextDecoration.lineThrough,
                                color: Colors.black54,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Sofia")),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0, top: 5.0),
                        child: Text("\$12.00",
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Color(0xFF7F7FD5),
                                fontWeight: FontWeight.w800,
                                fontFamily: "Sofia")),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 5.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              size: 11.0,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              size: 11.0,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              size: 11.0,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              size: 11.0,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star_half,
                              size: 11.0,
                              color: Colors.yellow,
                            ),
                            Text(
                              "4.8",
                              style: TextStyle(
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Sofia",
                                  color: Colors.black38),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 5.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              size: 11.0,
                              color: Colors.black38,
                            ),
                            Text(
                              "United Kingdom",
                              style: TextStyle(
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Sofia",
                                  color: Colors.black38),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                        child: Text(
                          "200",
                          style: TextStyle(
                              fontSize: 10.0,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Sofia",
                              color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 4.0, left: 10.0, bottom: 15.0),
                        child: Container(
                          height: 5.0,
                          width: 130.0,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4.0)),
                              shape: BoxShape.rectangle),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

/// cardShop1 in bottom item "Recomended" item
class cardShop1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 320.0,
        width: 150.0,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF656565).withOpacity(0.15),
                blurRadius: 4.0,
                spreadRadius: 1.0,
//           offset: Offset(4.0, 10.0)
              )
            ]),
        child: Wrap(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                /// Set Animation image to detailProduk layout
                Material(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          opaque: false,
                          pageBuilder: (BuildContext context, _, __) {
                            return new Material(
                              color: Colors.black54,
                              child: Container(
                                padding: EdgeInsets.all(30.0),
                                child: InkWell(
                                  child: Image.network(
                                    "https://ecs7.tokopedia.net/img/cache/700/hDjmkQ/2020/10/3/e95c65c3-3070-4274-9925-9c3ccbd283ea.jpg",
                                    width: 300.0,
                                    height: 300.0,
                                    alignment: Alignment.center,
                                    fit: BoxFit.contain,
                                  ),
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                            );
                          },
                          transitionDuration: Duration(milliseconds: 500)));
                    },
                    child: Container(
                      height: 160.0,
                      width: 190.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(7.0),
                              topRight: Radius.circular(7.0)),
                          image: DecorationImage(
                              image: NetworkImage(
                                "https://ecs7.tokopedia.net/img/cache/700/hDjmkQ/2020/10/3/e95c65c3-3070-4274-9925-9c3ccbd283ea.jpg",
                              ),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 7.0)),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Text(
                    "T-Shirt Man Cassual",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        letterSpacing: 0.5,
                        color: Colors.black54,
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 1.0)),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Text(
                    "\$20.00",
                    style: TextStyle(
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, right: 15.0, top: 5.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            "4.8",
                            style: TextStyle(
                                fontFamily: "Sofia",
                                color: Colors.black26,
                                fontWeight: FontWeight.w500,
                                fontSize: 12.0),
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 14.0,
                          )
                        ],
                      ),
                      Text(
                        "213 Sale",
                        style: TextStyle(
                            fontFamily: "Sofia",
                            color: Colors.black26,
                            fontWeight: FontWeight.w500,
                            fontSize: 12.0),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// Class Component a Item Discount Card
class cardShop3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 20.0, left: 10.0, bottom: 10.0, right: 0.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF656565).withOpacity(0.15),
                  blurRadius: 2.0,
                  spreadRadius: 1.0,
//           offset: Offset(4.0, 10.0)
                )
              ]),
          child: Wrap(
            children: <Widget>[
              Container(
                width: 160.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          height: 185.0,
                          width: 160.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(7.0),
                                  topRight: Radius.circular(7.0)),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://www.trustedreviews.com/wp-content/uploads/sites/54/2019/06/canon_eos_250d_product_01.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          height: 25.5,
                          width: 55.0,
                          decoration: BoxDecoration(
                              color: Color(0xFFD7124A),
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20.0),
                                  topLeft: Radius.circular(5.0))),
                          child: Center(
                              child: Text(
                            "10%",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          )),
                        )
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 7.0)),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Text(
                        "Canon DSLR DD2020",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            letterSpacing: 0.5,
                            color: Colors.black54,
                            fontFamily: "Sofia",
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 1.0)),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Text(
                        "\$300",
                        style: TextStyle(
                            fontFamily: "Sofia",
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 5.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                "5.0",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    color: Colors.black26,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.0),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 14.0,
                              )
                            ],
                          ),
                          Text(
                            "200 Sale",
                            style: TextStyle(
                                fontFamily: "Sofia",
                                color: Colors.black26,
                                fontWeight: FontWeight.w500,
                                fontSize: 12.0),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
