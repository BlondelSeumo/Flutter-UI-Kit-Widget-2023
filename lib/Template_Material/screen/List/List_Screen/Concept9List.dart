import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Animation/FadeAnimation.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/Card/Card/Concept6_Card.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/Grid/Model/HotelListData.dart';

class Concept9List extends StatefulWidget {
  Concept9List({Key? key}) : super(key: key);

  @override
  _Concept9ListState createState() => _Concept9ListState();
}

class _Concept9ListState extends State<Concept9List> {
  @override
  Widget build(BuildContext context) {
    var _appbar = AppBar(
      backgroundColor: Color(0xFFFFFFFF),
      elevation: 0.0,
      centerTitle: true,
      title: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Text(
          "Concept 9 List",
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

      // backgroundColor: Colors.white,

      // Calling variable appbar
      appBar: _appbar,

      body: ListView.builder(
        itemBuilder: (ctx, index) => cardList(hotelDataDummy[index]),
        itemCount: hotelDataDummy.length,
      ),
    );
  }
}

class cardList extends StatelessWidget {
  @override
  var _txtStyleTitle = TextStyle(
    color: Colors.black87,
    fontFamily: "Gotik",
    fontSize: 17.0,
    fontWeight: FontWeight.w800,
  );

  var _txtStyleSub = TextStyle(
    color: Colors.black26,
    fontFamily: "Gotik",
    fontSize: 12.5,
    fontWeight: FontWeight.w600,
  );

  hotelListData hotelData;

  cardList(this.hotelData);
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
      child: Container(
        height: 250.0,
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
                  image: NetworkImage(hotelData.img!), fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0, right: 10.0),
              child: CircleAvatar(
                  radius: 20.0,
                  backgroundColor: Colors.black12,
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  )),
            ),
            alignment: Alignment.topRight,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          width: 220.0,
                          child: Text(
                            hotelData.name!,
                            style: _txtStyleTitle,
                            overflow: TextOverflow.ellipsis,
                          )),
                      Padding(padding: EdgeInsets.only(top: 5.0)),
                      Row(
                        children: <Widget>[
                          ratingbar(
                            starRating: hotelData.rating,
                            color: Colors.deepPurpleAccent,
                          ),
                          Padding(padding: EdgeInsets.only(left: 5.0)),
                          Text(
                            "(" + hotelData.rating.toString() + ")",
                            style: _txtStyleSub,
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.9),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              size: 16.0,
                              color: Colors.black26,
                            ),
                            Padding(padding: EdgeInsets.only(top: 3.0)),
                            Text(hotelData.location!, style: _txtStyleSub)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 13.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "\$" + hotelData.price!,
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.deepPurpleAccent,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Gotik"),
                      ),
                      Text("per night",
                          style: _txtStyleSub.copyWith(fontSize: 11.0))
                    ],
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
