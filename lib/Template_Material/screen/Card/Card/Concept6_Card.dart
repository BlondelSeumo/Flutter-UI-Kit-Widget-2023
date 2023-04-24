import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/Card/Model/ConceptModel.dart';

class ConceptCard6 extends StatefulWidget {
  ConceptCard6({Key? key}) : super(key: key);

  @override
  _ConceptCard6State createState() => _ConceptCard6State();
}

class _ConceptCard6State extends State<ConceptCard6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.99),
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Concept 6",
          style: TextStyle(fontFamily: "Sofia", fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            card1(),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
              ),
              child: Container(
                height: 140.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    SizedBox(
                      width: 20.0,
                    ),
                    card4(
                      colorTop: Color(0xFFF07DA4),
                      colorBottom: Color(0xFFF5AE87),
                      image: "assets/icon/amerika.png",
                      title: "America",
                    ),
                    card4(
                        colorTop: Color(0xFF63CCD1),
                        colorBottom: Color(0xFF75E3AC),
                        image: "assets/icon/thailand.png",
                        title: "Thailand"),
                    card4(
                        colorTop: Color(0xFF9183FC),
                        colorBottom: Color(0xFFDB8EF6),
                        image: "assets/icon/england.png",
                        title: "England"),
                    card4(
                        colorTop: Color(0xFF56B4EE),
                        colorBottom: Color(0xFF59CCE1),
                        image: "assets/icon/italia.png",
                        title: "Italia"),
                    card4(
                        colorTop: Color(0xFF56AB2F),
                        colorBottom: Color(0xFFA8E063),
                        image: "assets/icon/spanyol.png",
                        title: "Spanyol"),
                    InkWell(
                      onTap: () {},
                      child: card4(
                          colorTop: Color(0xFF74EBD5),
                          colorBottom: Color(0xFFACB6E5),
                          image: "assets/icon/paris.png",
                          title: "France"),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              height: 320.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  SizedBox(
                    width: 10.0,
                  ),
                  card2(
                      "https://images.pexels.com/photos/4819821/pexels-photo-4819821.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                      "Ama Dablam ",
                      "Tanzania",
                      "4,3",
                      "dsadsa2",
                      context),
                  card2(
                      "https://images.pexels.com/photos/3224113/pexels-photo-3224113.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
                      "Table Mountain",
                      "Africa",
                      "4,1",
                      "gew321",
                      context),
                  card2(
                      "https://images.pexels.com/photos/831082/pexels-photo-831082.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
                      "Mount Kilimanjaro",
                      "Nepal",
                      "4,2",
                      "213asd",
                      context),
                  card2(
                      "https://images.pexels.com/photos/4314299/pexels-photo-4314299.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
                      "Gangtok Mount",
                      "Nepal",
                      "4,7",
                      "gfd23",
                      context),
                  card2(
                      "https://images.pexels.com/photos/2962595/pexels-photo-2962595.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                      "Mount Papua",
                      "Indonesia",
                      "4,5",
                      "cds321",
                      context),
                  SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class card1 extends StatelessWidget {
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
                  image: NetworkImage(
                    "https://images.pexels.com/photos/575393/pexels-photo-575393.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                  ),
                  fit: BoxFit.cover),
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
                            "Jewe Marriot Hotel",
                            style: _txtStyleTitle,
                            overflow: TextOverflow.ellipsis,
                          )),
                      Padding(padding: EdgeInsets.only(top: 5.0)),
                      Row(
                        children: <Widget>[
                          ratingbar(
                            starRating: 4.9,
                            color: Colors.deepPurpleAccent,
                          ),
                          Padding(padding: EdgeInsets.only(left: 5.0)),
                          Text(
                            "(" "4.9 Rattings" ")",
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
                            Text("United Kingdom", style: _txtStyleSub)
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
                        "\$ 12",
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

class ratingbar extends StatelessWidget {
  final int starCount;
  final double? starRating;
  final Color color;
  final double? size;

  ratingbar(
      {this.starCount = 5,
      this.starRating = 0.0,
      this.color = Colors.yellow,
      this.size});

  Widget buildStar(BuildContext context, int index) {
    IconData iconData = Icons.star;
    Color warna = color;

    if (index >= starRating!) {
      iconData = Icons.star;
      warna = Colors.black12.withOpacity(0.1);
    } else if (index > starRating! - 1 && index < starRating!) {
      iconData = Icons.star_half;
    }
    return Icon(iconData, size: 14.0, color: warna);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(starCount, (i) => buildStar(context, i)));
  }
}

Widget card2(String image, title, location, ratting, id, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        InkWell(
          onTap: () {},
          child: Hero(
            tag: 'hero-tag-${id}',
            child: Material(
              child: Container(
                height: 220.0,
                width: 160.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(image), fit: BoxFit.cover),
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5.0,
                          color: Colors.black12.withOpacity(0.1),
                          spreadRadius: 2.0)
                    ]),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          title,
          style: TextStyle(
              fontFamily: "Sofia",
              fontWeight: FontWeight.w600,
              fontSize: 17.0,
              color: Colors.black87),
        ),
        SizedBox(
          height: 2.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              Icons.location_on,
              size: 18.0,
              color: Colors.black12,
            ),
            Text(
              location,
              style: TextStyle(
                  fontFamily: "Sofia",
                  fontWeight: FontWeight.w500,
                  fontSize: 15.0,
                  color: Colors.black26),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.star,
              size: 18.0,
              color: Colors.yellow,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3.0),
              child: Text(
                ratting,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: "Sofia",
                    fontSize: 13.0),
              ),
            ),
            SizedBox(
              width: 35.0,
            ),
            Container(
              height: 27.0,
              width: 82.0,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Center(
                child: Text("Discount 15%",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 10.0)),
              ),
            )
          ],
        ),
      ],
    ),
  );
}

class card4 extends StatelessWidget {
  Color? colorTop, colorBottom;
  String? image, title;
  card4({this.colorTop, this.colorBottom, this.title, this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, right: 5.0, bottom: 4.0),
      child: InkWell(
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 105.0,
              width: 105.0,
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(blurRadius: 8.0, color: Colors.black12)],
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                gradient: LinearGradient(
                    colors: [colorTop!, colorBottom!],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      image!,
                      height: 60,
                      color: Colors.white,
                    )),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text(
                title!,
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Sofia",
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
    );
  }
}
