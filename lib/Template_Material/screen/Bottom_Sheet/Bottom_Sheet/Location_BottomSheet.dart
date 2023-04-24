import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Home.dart';

class LocationBottomSheet extends StatefulWidget {
  LocationBottomSheet();

  @override
  LocationBottomSheetState createState() => new LocationBottomSheetState();
}

class LocationBottomSheetState extends State<LocationBottomSheet> {
  late PersistentBottomSheetController sheetController;
  late BuildContext _context;
  bool showSheet = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (BuildContext ctx) {
        _context = ctx;
        return Home();
      }),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFF5FBD84),
          elevation: 3,
          child: Icon(
            showSheet ? Icons.arrow_downward : Icons.arrow_upward,
            color: Colors.white,
          ),
          onPressed: () {
            setState(() {
              showSheet = !showSheet;
              if (showSheet) {
                _showSheet();
              } else {
                Navigator.pop(_context);
              }
            });
          }),
    );
  }

  void _showSheet() {
    sheetController = showBottomSheet(
        context: _context,
        builder: (BuildContext bc) {
          return Card(
            elevation: 10,
            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Container(
                          width: 30,
                          height: 5,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          )),
                    ),
                    Container(height: 10),
                    Row(
                      children: <Widget>[
                        Container(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.network(
                                      "https://seeklogo.com/images/S/Starbucks_Coffee-logo-DECE0A6E4B-seeklogo.com.png",
                                      height: 40.0,
                                      width: 40.0,
                                    ),
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    Text("Starbuck Coffe",
                                        style: TextStyle(
                                            fontFamily: "Sofia",
                                            fontSize: 28.0,
                                            fontWeight: FontWeight.w700))
                                  ]),
                              Container(height: 20),
                              Row(
                                children: <Widget>[
                                  StarRating(
                                      starCount: 5,
                                      rating: 4.7,
                                      color: Colors.yellow,
                                      size: 18),
                                  Container(width: 5),
                                  Text("4.9 (2451)",
                                      style: TextStyle(
                                          fontFamily: "Sofia",
                                          fontWeight: FontWeight.w300,
                                          color: Colors.black26)),
                                ],
                              ),
                              Container(height: 5),
                              Divider(),
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 50,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 20.0),
                            child:
                                Icon(Icons.location_on, color: Colors.black26),
                          ),
                          Text("740 Valencia St, San Francisco, CA",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ),
                    Divider(),
                    Container(
                      height: 50,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 20.0),
                            child: Icon(Icons.phone, color: Colors.black26),
                          ),
                          Text("(415) 349-0942",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ),
                    Divider(),
                    Container(
                      height: 50,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 20.0),
                            child: Icon(Icons.schedule, color: Colors.black26),
                          ),
                          Text("Wed, 10 AM - 9 PM",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ),
                  ],
                )),
          );
        });
    sheetController.closed.then((value) {
      setState(() {
        showSheet = false;
      });
    });
  }
}

typedef void RatingChangeCallback(double rating);

class StarRating extends StatelessWidget {
  final int starCount;
  final double rating;
  final RatingChangeCallback? onRatingChanged;
  final Color? color;
  final double size;

  StarRating({
    this.starCount = 5,
    this.rating = .0,
    this.onRatingChanged,
    this.color,
    this.size = 25,
  });

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    if (index >= rating) {
      icon = new Icon(
        Icons.star_border,
        color: Theme.of(context).buttonColor,
        size: size,
      );
    } else if (index > rating - 1 && index < rating) {
      icon = new Icon(
        Icons.star_half,
        color: color ?? Theme.of(context).primaryColor,
        size: size,
      );
    } else {
      icon = new Icon(
        Icons.star,
        color: color ?? Theme.of(context).primaryColor,
        size: size,
      );
    }
    return new InkResponse(
      onTap:
          onRatingChanged == null ? null : () => onRatingChanged!(index + 1.0),
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        children:
            new List.generate(starCount, (index) => buildStar(context, index)));
  }
}
