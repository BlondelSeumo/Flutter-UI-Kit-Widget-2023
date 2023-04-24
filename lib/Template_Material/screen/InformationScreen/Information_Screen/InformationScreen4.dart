import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Animation/FadeAnimation.dart';
import 'package:showcaseview/showcaseview.dart';

class InformationScreen4 extends StatefulWidget {
  InformationScreen4({Key? key}) : super(key: key);

  @override
  _InformationScreen4State createState() => _InformationScreen4State();
}

class _InformationScreen4State extends State<InformationScreen4> {
  @override
  var selectedFood = 'BURGER';

  Widget build(BuildContext context) {
    return ShowCaseWidget(
      builder: Builder(builder: (context) => Category()),
    );
  }
}

class Category extends StatefulWidget {
  Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  GlobalKey _11one = GlobalKey();
  GlobalKey _22two = GlobalKey();
  GlobalKey _33three = GlobalKey();
  GlobalKey _44four = GlobalKey();
  GlobalKey _55five = GlobalKey();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) =>
        ShowCaseWidget.of(context)
            ?.startShowCase([_11one, _22two, _33three, _44four, _55five]));
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Stack(children: <Widget>[
              Container(
                height: 262.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/images/background10.png",
                        ),
                        fit: BoxFit.cover)),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 67.0, left: 20.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Showcase(
                            key: _11one,
                            description: 'Tap to see photo profile',
                            child: Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                    color: Colors.black12.withOpacity(0.1),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://images.pexels.com/photos/2810837/pexels-photo-2810837.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.all(Radius.circular(75.0)),
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 7.0,
                                          color: Colors.black26)
                                    ])),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 25.0, top: 20.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Sofia Risaki",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "Sofia",
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20.0),
                                  ),
                                  Text(
                                    "sofia42@gmail.com",
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontFamily: "Sofia",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.0),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                ]),
                          ),
                        ]),
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 290.0),
                child: Column(
                  children: <Widget>[
                    Showcase(
                      key: _22two,
                      description: 'Tap to open edit profile',
                      child: InkWell(
                        onTap: () {},
                        child: category(
                          txt: "Edit Profile",
                          icon: Icons.person,
                          padding: 20.0,
                        ),
                      ),
                    ),
                    Showcase(
                      key: _33three,
                      description: 'Tap to open call center',
                      child: InkWell(
                        onTap: () {},
                        child: category(
                          txt: "Call Center",
                          icon: Icons.call,
                          padding: 20.0,
                        ),
                      ),
                    ),
                    Showcase(
                      key: _44four,
                      description: 'Tap to open about apps',
                      child: InkWell(
                        onTap: () {},
                        child: category(
                          txt: "About Apps",
                          icon: Icons.ad_units,
                          padding: 20.0,
                        ),
                      ),
                    ),
                    Showcase(
                      key: _55five,
                      description: 'Tap to logout',
                      child: InkWell(
                        onTap: () {},
                        child: category(
                          txt: "Logout",
                          icon: Icons.account_circle,
                          padding: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}

/// Component category class to set list
class category extends StatelessWidget {
  String? txt;
  IconData? icon;
  GestureTapCallback? tap;
  double? padding;

  category({this.txt, this.icon, this.tap, this.padding});

  Widget build(BuildContext context) {
    return InkWell(
      onTap: tap,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: padding!),
                      child: Icon(
                        icon,
                        size: 24.0,
                        color: Colors.black54,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Text(
                        txt!,
                        style: TextStyle(
                          fontSize: 14.5,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Sofia",
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black26,
                    size: 15.0,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Divider(
            color: Colors.black12,
          )
        ],
      ),
    );
  }
}
