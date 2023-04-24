import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/Bottom_Sheet/Bottom_Sheet/Location_BottomSheet.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/Expand/LibraryExpand/ExpandedDetailRatting.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/Expand/LibraryExpand/ExpandedDetailReviews.dart';

class Concept2Expand extends StatefulWidget {
  @override
  _Concept2ExpandState createState() => _Concept2ExpandState();
}

class _Concept2ExpandState extends State<Concept2Expand> {
  @override
  double rating = 3.5;
  int starCount = 5;

  /// Custom Text for Detail title
  static var _detailText = TextStyle(
      fontFamily: "Gotik",
      color: Colors.black54,
      letterSpacing: 0.3,
      wordSpacing: 0.5);

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Concept 2 Expand"),
        centerTitle: true,
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black87,
            )),
        elevation: 0.0,
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 20.0),
                  child: Text(
                    "Reviews",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontFamily: "Popins",
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, left: 20.0),
                  child: Row(
                    children: <Widget>[
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            StarRating(
                              size: 25.0,
                              starCount: 5,
                              rating: rating,
                              color: Colors.yellow,
                            ),
                            SizedBox(width: 5.0),
                            Text('8 Reviews')
                          ]),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
                  child: _line(),
                ),
                ListTile(
                  leading: Container(
                    height: 45.0,
                    width: 45.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://images.pexels.com/photos/1816606/pexels-photo-1816606.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(50.0))),
                  ),
                  title: Row(
                    children: <Widget>[
                      StarRating(
                        size: 20.0,
                        rating: rating,
                        starCount: starCount,
                        color: Colors.yellow,
                        onRatingChanged: (rating) {
                          setState(() {
                            this.rating = rating;
                          });
                        },
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        "Date",
                        style: TextStyle(fontSize: 12.0),
                      )
                    ],
                  ),
                  subtitle: ExpansionTileReview(
                    title: Text(
                      "Wow good application i not have experience with this but usefull",
                      style: _detailText,
                    ),
                    children: [
                      SizedBox(height: 10.0),
                      Text(
                        "Thank you great apps",
                        style: _detailText,
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Best Material template",
                        style: _detailText,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
                  child: _line(),
                ),
                _buildRating(
                    "11/12/2020", "Awesome application make my life easy",
                    (rating) {
                  setState(() {
                    this.rating = rating;
                  });
                }, "https://images.pexels.com/photos/2804282/pexels-photo-2804282.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                Padding(
                  padding: EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
                  child: _line(),
                ),
                _buildRating("11/12/2020", "Powerfull apps very recommended",
                    (rating) {
                  setState(() {
                    this.rating = rating;
                  });
                }, "https://images.pexels.com/photos/2113132/pexels-photo-2113132.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"),
                Padding(
                  padding: EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
                  child: _line(),
                ),
                _buildRating(
                    "11/12/2020", "Great application make my life easy",
                    (rating) {
                  setState(() {
                    this.rating = rating;
                  });
                }, "https://images.pexels.com/photos/1845732/pexels-photo-1845732.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                Padding(
                  padding: EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
                  child: _line(),
                ),
                _buildRating("11/12/2020", "Nice application make my life easy",
                    (rating) {
                  setState(() {
                    this.rating = rating;
                  });
                }, "https://images.pexels.com/photos/1853097/pexels-photo-1853097.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                SizedBox(
                  height: 10.0,
                ),
                _line(),
                Column(
                  children: <Widget>[
                    ExpansionTileCustomRatting(
                      title: _buildRating(
                          "11/12/2020", "Awesome application make my life easy",
                          (rating) {
                        setState(() {
                          this.rating = rating;
                        });
                      }, "https://images.pexels.com/photos/2004512/pexels-photo-2004512.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
                          child: _line(),
                        ),
                        _buildRating(
                            "11/12/2020", "Good application make my life easy",
                            (rating) {
                          setState(() {
                            this.rating = rating;
                          });
                        }, "https://images.pexels.com/photos/2804282/pexels-photo-2804282.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
                          child: _line(),
                        ),
                        _buildRating("11/12/2020",
                            "Awesome application make my life easy", (rating) {
                          setState(() {
                            this.rating = rating;
                          });
                        }, "https://images.pexels.com/photos/1776635/pexels-photo-1776635.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
                          child: _line(),
                        ),
                        _buildRating("11/12/2020",
                            "Awesome application make my life easy", (rating) {
                          setState(() {
                            this.rating = rating;
                          });
                        }, "https://images.pexels.com/photos/1876429/pexels-photo-1876429.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
                          child: _line(),
                        ),
                        _buildRating(
                            "11/12/2020", "Nice application make my life easy",
                            (rating) {
                          setState(() {
                            this.rating = rating;
                          });
                        }, "https://images.pexels.com/photos/1936769/pexels-photo-1936769.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
                          child: _line(),
                        ),
                        _buildRating("11/12/2020",
                            "Awesome application make my life easy", (rating) {
                          setState(() {
                            this.rating = rating;
                          });
                        }, "https://images.pexels.com/photos/1926843/pexels-photo-1926843.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
                          child: _line(),
                        ),
                        _buildRating(
                            "11/12/2020", "Great application make my life easy",
                            (rating) {
                          setState(() {
                            this.rating = rating;
                          });
                        }, "https://images.pexels.com/photos/1958734/pexels-photo-1958734.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
                          child: _line(),
                        ),
                        _buildRating("11/12/2020",
                            "Awesome application make my life easy", (rating) {
                          setState(() {
                            this.rating = rating;
                          });
                        }, "https://images.pexels.com/photos/1958728/pexels-photo-1958728.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
                          child: _line(),
                        ),
                        _buildRating(
                            "11/12/2020", "Good application make my life easy",
                            (rating) {
                          setState(() {
                            this.rating = rating;
                          });
                        }, "https://images.pexels.com/photos/1975879/pexels-photo-1975879.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                      ],
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(bottom: 40.0)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRating(
      String date, String details, Function changeRating, String image) {
    return ListTile(
      leading: Container(
        height: 45.0,
        width: 45.0,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(50.0))),
      ),
      title: Row(
        children: <Widget>[
          StarRating(
              size: 20.0,
              rating: rating,
              starCount: starCount,
              color: Colors.yellow,
              onRatingChanged: changeRating as void Function(double)?),
          SizedBox(width: 8.0),
          Text(
            date,
            style: TextStyle(fontSize: 12.0),
          )
        ],
      ),
      subtitle: Text(
        details,
        style: _detailText,
      ),
    );
  }
}

Widget _line() {
  return Container(
    height: 0.9,
    width: double.infinity,
    color: Colors.black12,
  );
}
