import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/Card/Model/ConceptModel.dart';

class ConceptCard5 extends StatefulWidget {
  ConceptCard5({Key? key}) : super(key: key);

  @override
  _ConceptCard5State createState() => _ConceptCard5State();
}

class _ConceptCard5State extends State<ConceptCard5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.99),
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Concept 5",
          style: TextStyle(fontFamily: "Sofia", fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 250.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  card1(
                    img:
                        'https://images.pexels.com/photos/2079234/pexels-photo-2079234.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
                    txtTitle: 'Hotel',
                    txtSize: 48.0,
                    txtHeader: 'Best Hotel Choice',
                    txtDesc:
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled',
                    navigatorOntap: () {},
                  ),
                  card1(
                    img:
                        'https://images.pexels.com/photos/2079234/pexels-photo-2079234.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
                    txtTitle: 'Hotel',
                    txtSize: 48.0,
                    txtHeader: 'Best Hotel Choice',
                    txtDesc:
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled',
                    navigatorOntap: () {},
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            card2(MediaQuery.of(context).size.width),
            SizedBox(
              height: 20.0,
            ),
            card3(),
          ],
        ),
      ),
    );
  }
}

Widget card2(double _widht) {
  return Padding(
    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
    child: Row(
      children: [
        Container(
          height: 197.0,
          width: 95.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://images.pexels.com/photos/140962/pexels-photo-140962.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          child: Container(
            height: 197.0,
            width: 95.0,
            decoration: BoxDecoration(
                color: Colors.black12.withOpacity(0.6),
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10.0),
              child: Text(
                "Modern",
                style: TextStyle(
                    fontFamily: "Sofia",
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Column(
            children: <Widget>[
              InkWell(
                onTap: () {},
                child: Container(
                  height: 95.0,
                  width: _widht / 1.7,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.pexels.com/photos/715347/pexels-photo-715347.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Container(
                    height: 89.0,
                    width: _widht / 1.7,
                    decoration: BoxDecoration(
                        color: Colors.black12.withOpacity(0.6),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 15.0),
                      child: Text(
                        "Ruisitic",
                        style: TextStyle(
                            fontFamily: "Sofia",
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 95.0,
                  width: _widht / 1.7,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.pexels.com/photos/1769369/pexels-photo-1769369.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Container(
                    height: 89.0,
                    width: _widht / 1.7,
                    decoration: BoxDecoration(
                        color: Colors.black12.withOpacity(0.6),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 15.0),
                      child: Text(
                        "Minimalist",
                        style: TextStyle(
                            fontFamily: "Sofia",
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

class card1 extends StatelessWidget {
  @override
  String? img, txtTitle, txtHeader, txtDesc;
  double? txtSize;
  GestureTapCallback? navigatorOntap;
  card1(
      {this.img,
      this.txtTitle,
      this.txtSize,
      this.navigatorOntap,
      this.txtHeader,
      this.txtDesc});
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 4.0, right: 12.0, top: 8.0, bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          InkWell(
            onTap: navigatorOntap,
            child: Container(
              width: 285.0,
              height: 135.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(img!), fit: BoxFit.cover),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF656565).withOpacity(0.15),
                      blurRadius: 2.0,
                      spreadRadius: 1.0,
//           offset: Offset(4.0, 10.0)
                    )
                  ]),
              child: Center(
                child: Text(
                  txtTitle!,
                  style: TextStyle(
                      fontFamily: 'Amira',
                      color: Colors.white,
                      fontSize: 59.0,
                      letterSpacing: 2.0,
                      shadows: [
                        Shadow(
                          color: Colors.black12.withOpacity(0.1),
                          blurRadius: 2.0,
                        )
                      ]),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 10.0),
            child: Text(
              txtHeader!,
              style: TextStyle(
                fontFamily: "Sofia",
                fontSize: 16.0,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 5.0),
            child: Container(
                width: 270.0,
                child: Text(
                  txtDesc!,
                  overflow: TextOverflow.clip,
                  maxLines: 3,
                  style: TextStyle(
                    fontFamily: "Sofia",
                    fontSize: 13.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black26,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

///
/// Create item card
///
class card3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 10.0, right: 10.0, top: 8.0, bottom: 5.0),
      child: Container(
        height: 140.0,
        width: 400.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        child: Material(
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              image: DecorationImage(
                  image: NetworkImage(
                      "https://images.pexels.com/photos/3678978/pexels-photo-3678978.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                  fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFABABAB).withOpacity(0.7),
                  blurRadius: 4.0,
                  spreadRadius: 3.0,
                ),
              ],
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                color: Colors.black12.withOpacity(0.1),
              ),
              child: Center(
                child: Text(
                  "House",
                  style: TextStyle(
                    shadows: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.7),
                          blurRadius: 10.0,
                          spreadRadius: 2.0)
                    ],
                    color: Colors.white,
                    fontFamily: "Sofia",
                    fontWeight: FontWeight.w800,
                    fontSize: 50.0,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
