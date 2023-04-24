import 'package:flutter/material.dart';

class Concept7List extends StatefulWidget {
  @override
  _Concept7ListState createState() => _Concept7ListState();
}

class _Concept7ListState extends State<Concept7List> {
  static final background = Color(0xFF0F233D);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            ///
            /// Create circle buble in header
            ///
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
              padding: const EdgeInsets.only(top: 72.0, left: 30.0),
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    "Concept 7 List",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 29.0,
                        fontFamily: "Popins"),
                  ),
                ],
              ),
            ),

            ///
            /// Create column for card
            ///
            Column(
              children: <Widget>[
                SizedBox(
                  height: 140.0,
                ),
                _card("2.1 ETH", "ETHEREUM", "42kj213hjkdas23141jkb"),
                _card("1.3 BTC", "BITCOIN", "42kj213hjkdas23141jkb"),
                _card("4.2 RPL", "RIPPLE", "42kj213hjkdas23141jkb"),
                _card("1.1 DSH", "DASH", "42kj213hjkdas23141jkb"),
                SizedBox(
                  height: 30.0,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _line() {
    return Container(
      height: 1.0,
      width: double.infinity,
      color: Colors.white10,
    );
  }

  Widget _card(String value, String title, String code) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
            child: Container(
              height: 140.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  color: Color(0xFF232D4E),
                  border: Border.all(color: Colors.white10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, top: 10.0, bottom: 10.0),
                    child: Text(
                      "Card",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Sans",
                          fontWeight: FontWeight.w200,
                          letterSpacing: 1.5,
                          fontSize: 16.0),
                    ),
                  ),
                  _line(),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 15.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.wallet_giftcard,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                title,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Popins",
                                    fontWeight: FontWeight.w200,
                                    letterSpacing: 1.5,
                                    fontSize: 17.0),
                              ),
                              Text(
                                code,
                                style: TextStyle(
                                    fontFamily: "Sans",
                                    fontWeight: FontWeight.w300,
                                    letterSpacing: 1.5,
                                    fontSize: 14.0,
                                    color: Colors.white24),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Container(
                height: 40.0,
                width: 130.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        tileMode: TileMode.repeated,
                        colors: [Color(0xFF15EDED), Color(0xFF029CF5)])),
                child: Center(
                  child: Text(
                    value,
                    style: TextStyle(
                        fontFamily: "Sans",
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.5,
                        fontSize: 15.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
