import 'package:flutter/material.dart';

class Concept5List extends StatefulWidget {
  Concept5List({Key? key}) : super(key: key);

  _Concept5ListState createState() => _Concept5ListState();
}

class _Concept5ListState extends State<Concept5List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Concept 5 List",
          style: TextStyle(fontFamily: "Sofia"),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _transaction(
                Icons.gamepad, "Buying PS 5", "Monthly Payment", "-\$510"),
            _transaction(
                Icons.satellite, "Photo Course", "Monthly Payment", "-\$50"),
            _transaction(Icons.airport_shuttle, "Car Gas Bill",
                "Monthly Payment", "-\$210"),
            _transaction(
                Icons.code, "Buying Template", "Monthly Payment", "-\$39"),
            _transaction(
                Icons.golf_course, "Golf Course", "Monthly Payment", "-\$90"),
            _transaction(
                Icons.phone, "Buying Quota", "Monthly Payment", "-\$50"),
          ],
        ),
      ),
    );
  }

  ///
  /// Create triangle
  ///
  Widget _transaction(IconData icon, String title, String time, String value) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40.0)),
                        color: Color(0xFFA665D1)),
                    child: Center(
                      child: Icon(
                        icon,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Popins",
                            fontWeight: FontWeight.w600,
                            fontSize: 15.5),
                      ),
                      Text(
                        time,
                        style: TextStyle(color: Colors.black45),
                      )
                    ],
                  ),
                ],
              ),
              Text(
                value,
                style: TextStyle(
                  color: Colors.red,
                  fontFamily: "Popins",
                  fontWeight: FontWeight.w700,
                  fontSize: 15.5,
                ),
              )
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            height: 0.5,
            width: double.infinity,
            color: Colors.black12.withOpacity(0.1),
          )
        ],
      ),
    );
  }
}
