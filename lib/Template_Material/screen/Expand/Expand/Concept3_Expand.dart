import 'package:flutter/material.dart';

class Concept3Expand extends StatefulWidget {
  Concept3Expand({Key? key}) : super(key: key);

  @override
  _Concept3ExpandState createState() => _Concept3ExpandState();
}

class _Concept3ExpandState extends State<Concept3Expand> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white.withOpacity(0.99),
        appBar: AppBar(
          elevation: 0.0,
          title: Text(
            "Expand Concept 3",
            style: TextStyle(fontFamily: "Sofia", fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 20.0),
                Container(
                  height: 200.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            "https://images.pexels.com/photos/6297518/pexels-photo-6297518.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                          ),
                          fit: BoxFit.cover)),
                ),
                ExpansionTile(
                  title: Text(
                    "Title",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  children: <Widget>[
                    ExpansionTile(
                      title: Text(
                        'Sub title',
                      ),
                      children: <Widget>[
                        ListTile(
                          title: Text('data'),
                        )
                      ],
                    ),
                    ListTile(
                      title: Text('data'),
                    )
                  ],
                ),
                SizedBox(height: 30.0),
                Container(
                  height: 200.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            "https://images.pexels.com/photos/5110839/pexels-photo-5110839.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                          ),
                          fit: BoxFit.cover)),
                ),
                ExpansionTile(
                  title: Text(
                    "Title",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  children: <Widget>[
                    ExpansionTile(
                      title: Text(
                        'Sub title',
                      ),
                      children: <Widget>[
                        ListTile(
                          title: Text('data'),
                        )
                      ],
                    ),
                    ExpansionTile(
                      title: Text(
                        'Sub title',
                      ),
                      children: <Widget>[
                        ListTile(
                          title: Text('data'),
                        )
                      ],
                    ),
                    ListTile(
                      title: Text('data'),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
