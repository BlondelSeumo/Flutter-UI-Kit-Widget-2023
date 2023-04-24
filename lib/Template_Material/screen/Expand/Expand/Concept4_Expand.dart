import 'package:flutter/material.dart';

class Concept4Expand extends StatefulWidget {
  String? idUser;
  Concept4Expand({this.idUser});

  @override
  _Concept4ExpandState createState() => _Concept4ExpandState();
}

class _Concept4ExpandState extends State<Concept4Expand> {
  @override
  Widget build(BuildContext context) {
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
                          Container(
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
                                        blurRadius: 7.0, color: Colors.black26)
                                  ])),
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
                    ExpansionTile(
                      title: Text(
                        "Profile",
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Sofia"),
                      ),
                      leading: Icon(Icons.person),
                      children: <Widget>[
                        ListTile(
                          title: Text('Edit Profile'),
                        ),
                        ListTile(
                          title: Text('Show Profile'),
                        ),
                        ListTile(
                          title: Text('Add Friend'),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      title: Text(
                        "Call Center",
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Sofia"),
                      ),
                      leading: Icon(Icons.call),
                      children: <Widget>[
                        ListTile(
                          title: Text('Message'),
                        ),
                        ListTile(
                          title: Text('Info Call Center'),
                        ),
                        ListTile(
                          title: Text('Notification Call Center'),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      title: Text(
                        "About Apps",
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Sofia"),
                      ),
                      leading: Icon(Icons.ad_units),
                      children: <Widget>[
                        ListTile(
                          title: Text('Info Apps'),
                        ),
                        ListTile(
                          title: Text('Tell us'),
                        ),
                        ListTile(
                          title: Text('Ratting'),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      title: Text(
                        "Logout",
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Sofia"),
                      ),
                      leading: Icon(Icons.account_circle),
                      children: <Widget>[
                        ListTile(
                          title: Text('Delete User Information'),
                        ),
                        ListTile(
                          title: Text('Save data'),
                        ),
                      ],
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
