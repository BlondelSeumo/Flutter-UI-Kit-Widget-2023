import 'package:expandable_bottom_bar/expandable_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Home.dart';

class ExpandableBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultBottomBarController(
        child: ExpandableBottomSheet(),
      ),
    );
  }
}

class ExpandableBottomSheet extends StatefulWidget {
  ExpandableBottomSheet();

  @override
  ExpandableBottomSheetState createState() => new ExpandableBottomSheetState();
}

class ExpandableBottomSheetState extends State<ExpandableBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,

      //Set to true for bottom appbar overlap body content
      extendBody: true,
      body: Home(),

      // Lets use docked FAB for handling state of sheet
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: GestureDetector(
        // Set onVerticalDrag event to drag handlers of controller for swipe effect
        onVerticalDragUpdate: DefaultBottomBarController.of(context).onDrag,
        onVerticalDragEnd: DefaultBottomBarController.of(context).onDragEnd,
        child: FloatingActionButton.extended(
          label: Text("Expand"),
          elevation: 2,
          backgroundColor: Color(0xFF5FBD84),
          foregroundColor: Colors.white,

          //Set onPressed event to swap state of bottom bar
          onPressed: () => DefaultBottomBarController.of(context).swap(),
        ),
      ),

      // Actual expandable bottom bar
      bottomNavigationBar: BottomExpandableAppBar(
        expandedHeight: 550,
        horizontalMargin: 16,
        shape: AutomaticNotchedShape(
            RoundedRectangleBorder(), StadiumBorder(side: BorderSide())),
        expandedBackColor: Colors.white,
        expandedBody: Center(
          child: Text("Expandable"),
        ),
        bottomAppBarBody: Container(
          color: Color(0xFF5FBD84),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Item 1",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                Spacer(
                  flex: 2,
                ),
                Expanded(
                  child: Text(
                    "Item 2",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
