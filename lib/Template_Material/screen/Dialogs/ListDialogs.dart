import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/Dialogs/Dialogs/AnimationDialog1.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/Dialogs/Dialogs/AnimationDialog2.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/Dialogs/Dialogs/DatePickerDialog.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/Dialogs/Dialogs/FailedDialog.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/Dialogs/Dialogs/TermOfServicesDialog.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/Dialogs/Dialogs/TimePickerDialog.dart';
import 'package:page_transition/page_transition.dart';

import 'Dialogs/ChooseDialog.dart';
import 'Dialogs/ConfirmDialog.dart';
import 'Dialogs/GifDialog.dart';
import 'Dialogs/RattingDialog.dart';
import 'Dialogs/SimpleDialog.dart';
import 'Dialogs/BugReportDialog.dart';
import 'Dialogs/SuccesDialog.dart';

class DialogList extends StatefulWidget {
  DialogList({Key? key}) : super(key: key);

  @override
  _DialogListState createState() => _DialogListState();
}

class _DialogListState extends State<DialogList> {
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
                            child: ConfirmDialog(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xff42E695),
                        Color(0xff3BB2B8),
                      ], Color(0xFF15EDED), "Confirm Dialog",
                          "assets/images/dialog.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: AnimationDialog1(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xff42E695),
                        Color(0xff3BB2B8),
                      ], Color(0xFF15EDED), "Animation Dialog 1",
                          "assets/images/dialog.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: AnimationDialog2(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xff42E695),
                        Color(0xff3BB2B8),
                      ], Color(0xFF15EDED), "Animation Dialog 2",
                          "assets/images/dialog.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: SimpleDialogs(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xff42E695),
                        Color(0xff3BB2B8),
                      ], Color(0xFF15EDED), "Simple Dialog",
                          "assets/images/dialog.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: ChooseDialog(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xff42E695),
                        Color(0xff3BB2B8),
                      ], Color(0xFF15EDED), "Choose Dialog",
                          "assets/images/dialog.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: SuccesDialog(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xff42E695),
                        Color(0xff3BB2B8),
                      ], Color(0xFF15EDED), "Succes Dialog",
                          "assets/images/dialog.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: FailedDialog(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xff42E695),
                        Color(0xff3BB2B8),
                      ], Color(0xFF15EDED), "Failed Dialog",
                          "assets/images/dialog.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: TermOfServicesDialog(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xff42E695),
                        Color(0xff3BB2B8),
                      ], Color(0xFF15EDED), "Term Of Service Dialog",
                          "assets/images/dialog.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: TimePickerDialogScreen(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xff42E695),
                        Color(0xff3BB2B8),
                      ], Color(0xFF15EDED), "Time Picker Dialog",
                          "assets/images/dialog.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: DatePickerDialogScreen(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xff42E695),
                        Color(0xff3BB2B8),
                      ], Color(0xFF15EDED), "Date Picker Dialog",
                          "assets/images/dialog.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: BugReportDialog(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xff42E695),
                        Color(0xff3BB2B8),
                      ], Color(0xFF15EDED), "Bug Report Dialog",
                          "assets/images/dialog.png")),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRightWithFade,
                            duration: Duration(milliseconds: 600),
                            child: RattingDialog(),
                          ),
                        );
                      },
                      child: card([
                        Color(0xff42E695),
                        Color(0xff3BB2B8),
                      ], Color(0xFF15EDED), "Ratting Dialog",
                          "assets/images/dialog.png")),
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
                Color(0xff42E695),
                Color(0xff3BB2B8),
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
                        "List Dialogs",
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
      height: 70.0,
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
