import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/Bottom_Sheet/Bottom_Sheet/Basic_BottomSheet.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/Bottom_Sheet/Bottom_Sheet/Grid_BottomSheet.dart';
import 'package:page_transition/page_transition.dart';

import 'Bottom_Sheet/Expandable_BottomSheet.dart';
import 'Bottom_Sheet/Filter_BottomSheet.dart';
import 'Bottom_Sheet/Floating_BottomSheet.dart';
import 'Bottom_Sheet/List_BottomSheet.dart';
import 'Bottom_Sheet/Location_BottomSheet.dart';

class ListBottomSheet extends StatefulWidget {
  ListBottomSheet({Key? key}) : super(key: key);

  @override
  _ListBottomSheetState createState() => _ListBottomSheetState();
}

class _ListBottomSheetState extends State<ListBottomSheet> {
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
                            child: BasicBottomSheet(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xffFFB157),
                        Color(0xffFFA057),
                      ], Color(0xFF15EDED), "Basic Bottom Sheet",
                          "assets/images/bottomSheet.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: ExpandableBottom(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xffFFB157),
                        Color(0xffFFA057),
                      ], Color(0xFF15EDED), "Expandable Bottom Sheet",
                          "assets/images/bottomSheet.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: FloatingBottomSheet(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xffFFB157),
                        Color(0xffFFA057),
                      ], Color(0xFF15EDED), "Floating Bottom Sheet",
                          "assets/images/bottomSheet.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: FilterBottomSheet(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xffFFB157),
                        Color(0xffFFA057),
                      ], Color(0xFF15EDED), "Filter Bottom Sheet",
                          "assets/images/bottomSheet.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: GridBottomSheet(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xffFFB157),
                        Color(0xffFFA057),
                      ], Color(0xFF15EDED), "Grid Bottom Sheet",
                          "assets/images/bottomSheet.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: ListItemBottomSheet(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xffFFB157),
                        Color(0xffFFA057),
                      ], Color(0xFF15EDED), "List Item Bottom Sheet",
                          "assets/images/bottomSheet.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: LocationBottomSheet(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xffFFB157),
                        Color(0xffFFA057),
                      ], Color(0xFF15EDED), "Location Bottom Sheet",
                          "assets/images/bottomSheet.png")),
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
                Color(0xffFFB157),
                Color(0xffFFA057),
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
                        "Bottom Sheet",
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
                      fontSize: 19.0,
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
