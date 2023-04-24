import 'package:flutter/material.dart';

class ConceptCard extends StatefulWidget {
  ConceptCard({Key? key}) : super(key: key);

  @override
  _ConceptCardState createState() => _ConceptCardState();
}

class _ConceptCardState extends State<ConceptCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Concept 1",
          style: TextStyle(fontFamily: "Sofia", fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _cardFood1(),
            _cardFood5(),
            _cardArticle1(),
            _cardArticle2(),
            _cardArticle3(),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget _cardFood1() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Material(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            color: Color(0xFF1E2026),
            child: Container(
              height: 110.0,
              width: 110.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://images.pexels.com/photos/2103949/pexels-photo-2103949.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                  fit: BoxFit.cover,
                ),
                boxShadow: [BoxShadow(blurRadius: 0.0, color: Colors.black87)],
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                gradient: LinearGradient(colors: [
                  Color(0xFF1E2026),
                  Color(0xFF23252E),
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 19.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 200.0,
                  child: Text(
                    "Grilled Park Tenderolin",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Sofia",
                        fontSize: 17.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 2.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.query_builder,
                            size: 19.0,
                            color: Colors.black26,
                          ),
                          SizedBox(
                            width: 4.0,
                          ),
                          Text(
                            "50 Minute",
                            style: TextStyle(
                                color: Colors.black45,
                                fontFamily: "Sofia",
                                fontSize: 15.0,
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
                            size: 19.0,
                            color: Colors.black26,
                          ),
                          Text(
                            "400 Cal",
                            style: TextStyle(
                                color: Colors.black45,
                                fontFamily: "Sofia",
                                fontSize: 15.0,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            size: 21.0,
                            color: Colors.yellow,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 3.0),
                            child: Text(
                              "4.4",
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Sofia",
                                  fontSize: 16.0),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 27.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF5FBD84),
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 15.0, right: 15.0),
                          child: Center(
                            child: Text(
                              "Food",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _cardArticle1() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Material(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            color: Color(0xFF1E2026),
            child: Container(
              height: 110.0,
              width: 110.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://images.pexels.com/photos/159888/pexels-photo-159888.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                  fit: BoxFit.cover,
                ),
                boxShadow: [BoxShadow(blurRadius: 0.0, color: Colors.black87)],
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                gradient: LinearGradient(colors: [
                  Color(0xFF1E2026),
                  Color(0xFF23252E),
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 9.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 200.0,
                  child: Text(
                    "Stock Market Bullish Up 100%",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Sofia",
                        fontSize: 17.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 2.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.query_builder,
                            size: 19.0,
                            color: Colors.black26,
                          ),
                          SizedBox(
                            width: 4.0,
                          ),
                          Text(
                            "12/11/2020",
                            style: TextStyle(
                                color: Colors.black45,
                                fontFamily: "Sofia",
                                fontSize: 15.0,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                    width: MediaQuery.of(context).size.width / 1.9,
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry",
                      style: TextStyle(
                          fontFamily: "Sofia", fontWeight: FontWeight.w300),
                      maxLines: 2,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _cardFood5() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              blurRadius: 10.0,
              spreadRadius: 1.0,
              color: Colors.black12.withOpacity(0.1))
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Material(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0)),
              color: Color(0xFF1E2026),
              child: Container(
                height: 110.0,
                width: 110.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://images.pexels.com/photos/3590401/pexels-photo-3590401.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(blurRadius: 0.0, color: Colors.black87)
                  ],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0)),
                  gradient: LinearGradient(colors: [
                    Color(0xFF1E2026),
                    Color(0xFF23252E),
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 19.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 200.0,
                    child: Text(
                      "Grekelyn Foodie Wikys",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Sofia",
                          fontSize: 17.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.query_builder,
                              size: 19.0,
                              color: Colors.black26,
                            ),
                            SizedBox(
                              width: 4.0,
                            ),
                            Text(
                              "50 Minute",
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontFamily: "Sofia",
                                  fontSize: 15.0,
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
                              size: 19.0,
                              color: Colors.black26,
                            ),
                            Text(
                              "400 Cal",
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontFamily: "Sofia",
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              size: 21.0,
                              color: Colors.yellow,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3.0),
                              child: Text(
                                "4.4",
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Sofia",
                                    fontSize: 16.0),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 27.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF5FBD84),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 15.0, right: 15.0),
                            child: Center(
                              child: Text(
                                "Food",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _cardArticle2() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              blurRadius: 10.0,
              spreadRadius: 1.0,
              color: Colors.black12.withOpacity(0.1))
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Material(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0)),
              color: Color(0xFF1E2026),
              child: Container(
                height: 110.0,
                width: 110.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://images.pexels.com/photos/1884574/pexels-photo-1884574.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(blurRadius: 0.0, color: Colors.black87)
                  ],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0)),
                  gradient: LinearGradient(colors: [
                    Color(0xFF1E2026),
                    Color(0xFF23252E),
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 19.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 200.0,
                    child: Text(
                      "Vallencia win 5-0",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Sofia",
                          fontSize: 17.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width / 1.9,
                      child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry",
                        style: TextStyle(
                            fontFamily: "Sofia", fontWeight: FontWeight.w300),
                        maxLines: 2,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _cardArticle3() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              blurRadius: 10.0,
              spreadRadius: 1.0,
              color: Colors.black12.withOpacity(0.1))
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Material(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0)),
              color: Color(0xFF1E2026),
              child: Container(
                height: 110.0,
                width: 110.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://images.pexels.com/photos/1174732/pexels-photo-1174732.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(blurRadius: 0.0, color: Colors.black87)
                  ],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0)),
                  gradient: LinearGradient(colors: [
                    Color(0xFF1E2026),
                    Color(0xFF23252E),
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 200.0,
                    child: Text(
                      "Holiday on pandemi",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Sofia",
                          fontSize: 17.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 24.0,
                        width: 65.0,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        ),
                        child: Center(
                          child: Text(
                            "Holiday",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Sofia",
                                fontSize: 13.0,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Container(
                        height: 24.0,
                        width: 65.0,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        ),
                        child: Center(
                          child: Text(
                            "Article",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Sofia",
                                fontSize: 13.0,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width / 1.9,
                      child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry",
                        style: TextStyle(
                            fontFamily: "Sofia", fontWeight: FontWeight.w300),
                        maxLines: 2,
                      )),
                ],
              ),
            ),
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
