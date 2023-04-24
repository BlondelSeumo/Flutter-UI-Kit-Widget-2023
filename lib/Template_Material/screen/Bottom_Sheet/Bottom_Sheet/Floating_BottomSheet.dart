import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Home.dart';

class FloatingBottomSheet extends StatefulWidget {
  FloatingBottomSheet();

  @override
  FloatingBottomSheetState createState() => new FloatingBottomSheetState();
}

class FloatingBottomSheetState extends State<FloatingBottomSheet> {
  late PersistentBottomSheetController sheetController;
  late BuildContext _scaffoldCtx;
  bool showSheet = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (BuildContext ctx) {
        _scaffoldCtx = ctx;
        return Center(
          child: showSheet
              ? Home()
              : Stack(
                  children: <Widget>[
                    Home(),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(bottom: 30.0, right: 30.0),
                        child: FloatingActionButton(
                            backgroundColor: Color(0xFF5FBD84),
                            elevation: 3,
                            child: Icon(
                              Icons.update,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              setState(() {
                                showSheet = !showSheet;
                                if (showSheet) {
                                  _showSheet();
                                } else {
                                  Navigator.pop(_scaffoldCtx);
                                }
                              });
                            }),
                      ),
                    ),
                    Container(height: 20),
                  ],
                ),
        );
      }),
    );
  }

  void _showSheet() {
    sheetController = showBottomSheet(
        context: _scaffoldCtx,
        builder: (BuildContext bc) {
          return Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            elevation: 5,
            margin: EdgeInsets.all(10),
            child: Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            "Floating Bottom Sheet",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Sofia"),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.close, color: Colors.grey[600]),
                          onPressed: () {
                            sheetController.close();
                          },
                        ),
                      ],
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
