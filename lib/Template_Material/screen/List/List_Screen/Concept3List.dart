import 'package:flutter/material.dart';

class Concept3List extends StatefulWidget {
  Concept3List({Key? key}) : super(key: key);

  _Concept3ListState createState() => _Concept3ListState();
}

class _Concept3ListState extends State<Concept3List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Concept 3 List",
          style: TextStyle(fontFamily: "Sofia"),
        ),
      ),
      body: ListView(
        children: <Widget>[
          card("assets/images/finance_layout/bils_finance.png", "Bills",
              "3 bills not been paid"),
          card("assets/images/finance_layout/doctor_finance.png", "Doctor",
              "doctor not been paid"),
          card("assets/images/finance_layout/hangout_finance.png", "Hangout",
              "food not been paid"),
          card("assets/images/finance_layout/lifeStyle_finance.png",
              "LifeStyle", "2 t-shirt not been paid"),
          card("assets/images/finance_layout/workout_finance.png", "Workout",
              "fitness not been paid"),
          SizedBox(
            height: 10.0,
          )
        ],
      ),
    );
  }

  ///
  /// Card under of tab bar
  ///
  Widget card(String img, String title, String subTitle) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 200.0,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  blurRadius: 10.0,
                  color: Colors.black12.withOpacity(0.1),
                  spreadRadius: 3.0),
            ]),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 260.0,
                height: 200.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0)),
                    image: DecorationImage(
                        image: AssetImage(img), fit: BoxFit.fill)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60.0, left: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontFamily: "Popins",
                      color: Colors.black87,
                      fontWeight: FontWeight.w700,
                      fontSize: 21.0,
                    ),
                  ),
                  //  Text(subTitle,style: TextStyle(color: Colors.black45,fontFamily: "Popins"),),
                  SizedBox(
                    height: 60.0,
                  ),
                  Row(children: <Widget>[
                    Text(
                      "Detail",
                      style: TextStyle(
                          color: Colors.black54,
                          fontFamily: "Sans",
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black54,
                      size: 14.0,
                    )
                  ])
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
