import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Home.dart';

class BasicBottomSheet extends StatefulWidget {
  BasicBottomSheet();

  @override
  BasicBottomSheetState createState() => new BasicBottomSheetState();
}

class BasicBottomSheetState extends State<BasicBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Home(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF5FBD84),
        elevation: 3,
        child: Icon(
          Icons.arrow_upward,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.of(context).push(new MaterialPageRoute<Null>(
              builder: (BuildContext context) {
                return Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Wrap(
                    spacing: 60,
                    children: <Widget>[
                      Container(height: 10),
                      Text(
                        "Basic Bottom Sheet",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Sofia"),
                      ),
                      Container(height: 10),
                      Container(
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industr s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                          style: TextStyle(
                              color: Colors.black26,
                              fontSize: 14,
                              fontFamily: "Sofia"),
                        ),
                      ),
                      Container(height: 10),
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
                            child: new Text("CLOSE"),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
              fullscreenDialog: true));
        },
      ),
    );
  }
}

void showSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Wrap(
            spacing: 60,
            children: <Widget>[
              Container(height: 10),
              Text(
                "Basic Bottom Sheet",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Sofia"),
              ),
              Container(height: 10),
              Container(
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industr s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                  style: TextStyle(
                      color: Colors.black26, fontSize: 14, fontFamily: "Sofia"),
                ),
              ),
              Container(height: 10),
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
                    child: new Text("CLOSE"),
                  ),
                ],
              )
            ],
          ),
        );
      });
}
