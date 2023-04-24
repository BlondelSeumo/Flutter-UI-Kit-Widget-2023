import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/Bottom_Sheet/Bottom_Sheet/Location_BottomSheet.dart';

class RattingDialog extends StatefulWidget {
  RattingDialog();

  @override
  RattingDialogState createState() => new RattingDialogState();
}

class RattingDialogState extends State<RattingDialog> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Ratting Dialog",
          style: TextStyle(fontFamily: "Sofia", fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: InkWell(
            onTap: () {
              showDialog(
                  context: context, builder: (_) => RattingDialogCustom());
            },
            child: Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  color: Colors.greenAccent),
              child: Center(
                child: Text("Show Ratting Dialog",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w800,
                        fontFamily: "Sofia")),
              ),
            )),
      ),
    );
  }
}

class RattingDialogCustom extends StatefulWidget {
  RattingDialogCustom({Key? key}) : super(key: key);

  @override
  RattingDialogCustomState createState() => new RattingDialogCustomState();
}

class RattingDialogCustomState extends State<RattingDialogCustom> {
  @override
  double ratingValue = 4;
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        width: 160,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          color: Colors.white,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Wrap(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(1),
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Container(height: 10),
                    Icon(Icons.star, color: Colors.yellow, size: 100),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(25),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text("Ratting This Apps",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "Sofia",
                            fontWeight: FontWeight.w800,
                            fontSize: 17)),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text("Please give ratting our application",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "Sofia", fontWeight: FontWeight.w300)),
                    Container(height: 20),
                    Align(
                      alignment: Alignment.center,
                      child: StarRating(
                        starCount: 5,
                        rating: ratingValue,
                        color: Colors.orange[300],
                        size: 35,
                        onRatingChanged: (value) {
                          setState(() {
                            ratingValue = value;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        new ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0.0,
                            primary: Colors.transparent,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("CLOSE"),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0.0,
                            primary: Colors.transparent,
                          ),
                          child: Text("SUBMIT",
                              style: TextStyle(color: Colors.black)),
                          onPressed: () {},
                        )
                      ],
                    )
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
