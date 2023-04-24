import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/Card/Model/ConceptModel.dart';

class ConceptCard3 extends StatefulWidget {
  ConceptCard3({Key? key}) : super(key: key);

  @override
  _ConceptCard3State createState() => _ConceptCard3State();
}

class _ConceptCard3State extends State<ConceptCard3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Concept 3",
          style: TextStyle(fontFamily: "Sofia", fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 295,
              child: cardRecipe(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 20.0),
              child: Container(
                height: 270.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    SizedBox(
                      width: 20.0,
                    ),
                    cardGradient(
                      colorTop: Color(0xFF56B4EE),
                      colorBottom: Color(0xFF59CCE1),
                      image: "assets/icon/amerika.png",
                      title: "America",
                    ),
                    cardGradient(
                        colorTop: Color(0xFF63CCD1),
                        colorBottom: Color(0xFF75E3AC),
                        image: "assets/icon/thailand.png",
                        title: "Thailand"),
                    cardGradient(
                        colorTop: Color(0xFF9183FC),
                        colorBottom: Color(0xFFDB8EF6),
                        image: "assets/icon/england.png",
                        title: "England"),
                    cardGradient(
                        colorTop: Color(0xFF56B4EE),
                        colorBottom: Color(0xFF59CCE1),
                        image: "assets/icon/italia.png",
                        title: "Italia"),
                    cardGradient(
                        colorTop: Color(0xFFF07DA4),
                        colorBottom: Color(0xFFF5AE87),
                        image: "assets/icon/spanyol.png",
                        title: "Spanyol"),
                  ],
                ),
              ),
            ),
            _cardFood(),
            _creditCard(),
            _cardFood3(context),
            _cardDelivery(),
          ],
        ),
      ),
    );
  }
}

/// Custom Text Detail
var _txtCustomSub = TextStyle(
  color: Colors.black38,
  fontSize: 13.5,
  fontWeight: FontWeight.w500,
  fontFamily: "Gotik",
);

class Food {
  String? title;
  String? img;
  String? price;
  String? distance, time, calorie, category;
  List<String>? ingredient, directions;
  num? rating;

  Food(
      {this.title,
      this.img,
      this.price,
      this.category,
      this.time,
      this.rating,
      this.calorie,
      this.directions,
      this.ingredient,
      this.distance});
}

final foodItems = <Food>[
  Food(
      title: "Avocado recipe",
      price: "34.00",
      img:
          'https://images.pexels.com/photos/1279330/pexels-photo-1279330.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
      time: "60 Minute",
      category: "Healty",
      calorie: "150 Cal",
      directions: [
        "Pour 2 cups of water into a sealable 1 quart container, and stir in the yogurt until dissolved. Whisk in powdered milk until completely blended. Fill with remaining water, and stir. Close the lid, and set in a warm place for 12 to 15 hours. I use a gas oven (turned off), or even a heating pad. Refrigerate, until chilled before serving."
      ],
      ingredient: [
        "4 cups water, divided",
        "1 ½ tablespoons plain yogurt with active cultures",
        "1 ¾ cups dry milk powder"
      ],
      distance: "42 km",
      rating: 4.2),
  Food(
      title: "Guava recipe",
      price: "45.00",
      img:
          'https://images.pexels.com/photos/1260968/pexels-photo-1260968.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
      time: "60 Minute",
      category: "Healty",
      calorie: "150 Cal",
      directions: [
        "Pour 2 cups of water into a sealable 1 quart container, and stir in the yogurt until dissolved. Whisk in powdered milk until completely blended. Fill with remaining water, and stir. Close the lid, and set in a warm place for 12 to 15 hours. I use a gas oven (turned off), or even a heating pad. Refrigerate, until chilled before serving."
      ],
      ingredient: [
        "4 cups water, divided",
        "1 ½ tablespoons plain yogurt with active cultures",
        "1 ¾ cups dry milk powder"
      ],
      distance: "42 km",
      rating: 4.2),
  Food(
      title: "Orange recipe",
      price: "10.00",
      img:
          'https://images.pexels.com/photos/416471/pexels-photo-416471.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
      time: "60 Minute",
      category: "Healty",
      calorie: "150 Cal",
      directions: [
        "Pour 2 cups of water into a sealable 1 quart container, and stir in the yogurt until dissolved. Whisk in powdered milk until completely blended. Fill with remaining water, and stir. Close the lid, and set in a warm place for 12 to 15 hours. I use a gas oven (turned off), or even a heating pad. Refrigerate, until chilled before serving."
      ],
      ingredient: [
        "4 cups water, divided",
        "1 ½ tablespoons plain yogurt with active cultures",
        "1 ¾ cups dry milk powder"
      ],
      distance: "42 km",
      rating: 4.2)
];

Widget cardRecipe() {
  return ListView(
      scrollDirection: Axis.horizontal,
      children: foodItems.map<Widget>((Food food) {
        return GestureDetector(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 20.0),
              child: Container(
                width: 170,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey[300]!, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Material(
                      child: Container(
                        height: 170.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                            image: DecorationImage(
                                image: NetworkImage(food.img!),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        food.title!,
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Sofia",
                            fontSize: 17.0),
                      ),
                    ),
                    SizedBox(
                      height: 1.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                food.rating.toString(),
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontFamily: "Sofia",
                                    color: Colors.black38),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 10.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 10.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 10.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 10.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.black38,
                                size: 10.0,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                "(200)",
                                style: TextStyle(
                                    fontSize: 14.0, color: Colors.black38),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.0, left: 10.0),
                      child: Text(
                        food.calorie!,
                        style: TextStyle(
                            fontSize: 17.0,
                            fontFamily: "Sofia",
                            color: Color(0xFF5FBD84),
                            fontWeight: FontWeight.w700),
                      ),
                    )
                  ],
                ),
              ),
            ));
      }).toList());
}

class cardGradient extends StatelessWidget {
  Color? colorTop, colorBottom;
  String? image, title;
  cardGradient({this.colorTop, this.colorBottom, this.title, this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6.0, right: 6.0, bottom: 4.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 230.0,
          width: 250.0,
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(blurRadius: 8.0, color: Colors.black12)],
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            gradient: LinearGradient(
                colors: [colorTop!, colorBottom!],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(top: 25.0, left: 15.0, right: 15.0),
                child: Text(
                  title!,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Sofia",
                      fontSize: 22.0,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 5.0, left: 15.0, right: 15.0),
                child: Text(
                  "Simple and powerfull apps hybrid application",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Sofia",
                      fontSize: 18.0,
                      fontWeight: FontWeight.w300),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: Image.asset(
                      image!,
                      height: 80,
                      color: Colors.white,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _cardFood() {
  return Padding(
    padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0),
    child: Container(
      height: 280.0,
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
                    "https://images.pexels.com/photos/1410236/pexels-photo-1410236.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                fit: BoxFit.cover),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black12.withOpacity(0.4),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10.0),
                  topLeft: Radius.circular(10.0)),
            ),
            child: Center(
              child: CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.white54,
                  child: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 30.0,
                  )),
            ),
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
                        width: 290.0,
                        child: Text(
                          "Fried Rice Egg Ricas Easy Steps",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 18.5),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        )),
                    Padding(padding: EdgeInsets.only(top: 5.0)),
                    Container(
                      width: 290.0,
                      child: Text(
                        "Fried rice is a quick and delicious way to transform leftovers into something delicious! Though we sometimes think of certain ingredients being typical (eggs, garlic, soy) the only thing you need to make fried rice is heat, rice, and oil.",
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w300,
                            fontFamily: "Sofia",
                            color: Colors.black38),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                    ),
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

Widget _cardFood3(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          child: Container(
            height: 200.0,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://images.pexels.com/photos/4220141/pexels-photo-4220141.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
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
        Container(
          width: 280.0,
          child: Text(
            "Home Made Yougurt Bluberry White Cream",
            style: TextStyle(
                color: Colors.black,
                fontFamily: "Sofia",
                fontSize: 18.0,
                fontWeight: FontWeight.w700),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Container(
          width: 290.0,
          child: Text(
            "Fried rice is a quick and delicious way to transform leftovers into something delicious! Though we sometimes think of certain ingredients being typical (eggs, garlic, soy) the only thing you need to make fried rice is heat, rice, and oil.",
            style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w300,
                fontFamily: "Sofia",
                color: Colors.black38),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Container(
          width: MediaQuery.of(context).size.width / 1.2,
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
                    "60 Minute",
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
                      "4.3",
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
                    "150 Cal",
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
      ],
    ),
  );
}

Widget _creditCard() {
  return Padding(
    padding: const EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4.5,
              spreadRadius: 1.0,
            )
          ]),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 60.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "My Personal Card",
                  style: TextStyle(
                      fontFamily: "Sofia", fontWeight: FontWeight.w600),
                ),
                Icon(
                  Icons.credit_card,
                  color: Colors.blueGrey,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 20.0, bottom: 5.0, left: 20.0, right: 60.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Card Number",
                      style: _txtCustomSub,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text("4215 - 4353 - 3215 - 4213"),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Exp",
                      style: _txtCustomSub,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text("12/29"),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 15.0,
              bottom: 30.0,
              left: 20.0,
              right: 30.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Card Name",
                      style: _txtCustomSub,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text("Alissa Hearth"),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "CVV/CVC",
                      style: _txtCustomSub,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text("768"),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
              height: 50.0,
              width: 1000.0,
              color: Colors.blueGrey.withOpacity(0.1),
              child: Center(
                  child: Text("Edit Profile",
                      style: _txtCustomSub.copyWith(
                          fontSize: 16.0,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Sofia"))))
        ],
      ),
    ),
  );
}

var _txtCustom = TextStyle(
  color: Colors.black54,
  fontSize: 15.0,
  fontWeight: FontWeight.w500,
  fontFamily: "Gotik",
);

Widget _cardDelivery() {
  return Padding(
    padding:
        const EdgeInsets.only(top: 28.0, bottom: 30.0, left: 20.0, right: 20.0),
    child: Container(
      height: 130.0,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.black12.withOpacity(0.1),
              blurRadius: 4.5,
              spreadRadius: 1.0,
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(
            Icons.house,
            color: Colors.orangeAccent,
            size: 28.0,
          ),
          Container(
            width: 200.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Delivery Address",
                  style: _txtCustom.copyWith(
                      fontWeight: FontWeight.w700,
                      fontFamily: "Sofia",
                      fontSize: 20.0),
                ),
                Padding(padding: EdgeInsets.only(top: 5.0)),
                Text(
                  "Home, Work & Other Address",
                  style: _txtCustom.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 12.0,
                      color: Colors.black38),
                ),
                Padding(padding: EdgeInsets.only(top: 2.0)),
                Text(
                  "House No: 43, 2nd Floor Sector 18, Sillicon Vallec United States",
                  style: _txtCustom.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.0,
                      color: Colors.black38),
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
