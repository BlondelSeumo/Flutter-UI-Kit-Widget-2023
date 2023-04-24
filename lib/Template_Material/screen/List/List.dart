import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/Card/Card/Concept1_Card.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/Grid/Grid_Screen/ECommerceGridScreen.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/List/List_Screen/Concept1List.dart';
import 'package:page_transition/page_transition.dart';

import 'List_Screen/Concept10List.dart';
import 'List_Screen/Concept2List.dart';
import 'List_Screen/Concept3List.dart';
import 'List_Screen/Concept4List.dart';
import 'List_Screen/Concept5List.dart';
import 'List_Screen/Concept6List.dart';
import 'List_Screen/Concept7List.dart';
import 'List_Screen/Concept8List.dart';
import 'List_Screen/Concept9List.dart';
import 'List_Screen/DragableList.dart';
import 'List_Screen/SwipeList.dart';

class ListScreen extends StatefulWidget {
  ListScreen({Key? key}) : super(key: key);

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 60.0),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 25.0,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: SwipeList(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xFFFF5F6D),
                        Color(0xFFFFC371),
                      ], Color(0xFF15EDED), "Swipe List",
                          "assets/images/list.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: ListDraggableRoute(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xFFFF5F6D),
                        Color(0xFFFFC371),
                      ], Color(0xFF15EDED), "Draggable List",
                          "assets/images/list.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: Concept1List(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xFFFF5F6D),
                        Color(0xFFFFC371),
                      ], Color(0xFF15EDED), "List Concept 1",
                          "assets/images/list.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: Concept2List(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xFFFF5F6D),
                        Color(0xFFFFC371),
                      ], Color(0xFF15EDED), "List Concept 2",
                          "assets/images/list.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: Concept3List(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xFFFF5F6D),
                        Color(0xFFFFC371),
                      ], Color(0xFF15EDED), "List Concept 3",
                          "assets/images/list.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: Concept4List(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xFFFF5F6D),
                        Color(0xFFFFC371),
                      ], Color(0xFF15EDED), "List Concept 4",
                          "assets/images/list.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: Concept5List(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xFFFF5F6D),
                        Color(0xFFFFC371),
                      ], Color(0xFF15EDED), "List Concept 5",
                          "assets/images/list.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: Concept6List(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xFFFF5F6D),
                        Color(0xFFFFC371),
                      ], Color(0xFF15EDED), "List Concept 6",
                          "assets/images/list.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: Concept7List(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xFFFF5F6D),
                        Color(0xFFFFC371),
                      ], Color(0xFF15EDED), "List Concept 7",
                          "assets/images/list.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: Concept8List(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xFFFF5F6D),
                        Color(0xFFFFC371),
                      ], Color(0xFF15EDED), "List Concept 8",
                          "assets/images/list.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: Concept9List(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xFFFF5F6D),
                        Color(0xFFFFC371),
                      ], Color(0xFF15EDED), "List Concept 9",
                          "assets/images/list.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: Concept10List(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xFFFF5F6D),
                        Color(0xFFFFC371),
                      ], Color(0xFF15EDED), "List Concept 10",
                          "assets/images/list.png")),
                  SizedBox(
                    height: 30.0,
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 80.0,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color(0xFFFF5F6D),
                Color(0xFFFFC371),
              ])),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, left: 20.0),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Text(
                        "List Screen",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontFamily: "Sofia",
                            fontSize: 18.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40.0,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget card(
    List<Color> _colorGradient, Color _colorShadow, String _title, _image) {
  return Padding(
    padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 15.0),
    child: Container(
      height: 80.0,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: _colorGradient,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          boxShadow: [
            BoxShadow(
                color: Color(0xFF63AEED).withOpacity(0.2),
                blurRadius: 10.0,
                spreadRadius: 5.1,
                offset: Offset(3, 10))
          ]),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            children: [
              Image.asset(
                _image,
                height: 20.0,
                color: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  _title,
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontSize: 17.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
