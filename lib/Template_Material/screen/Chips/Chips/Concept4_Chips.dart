import 'dart:ui';
import 'package:bigkit_material_null_safety/Template_Material/screen/Chips/Chips/Library/Multi_Chip_Select.dart';
import 'package:flutter/material.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class Concept4Chips extends StatefulWidget {
  Concept4Chips();

  @override
  Concept4ChipsState createState() => new Concept4ChipsState();
}

class Concept4ChipsState extends State<Concept4Chips> {
  final multiSelectKey = GlobalKey<MultiSelectDropdownState>();
  String _result = "";
  var menuItems = [1, 2, 3, 4, 5, 6];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff8F7AFE),
        centerTitle: true,
        title: Text(
          "Concept 4 Chips Select",
          style: TextStyle(
              fontFamily: "Sofia", color: Colors.white, fontSize: 17.0),
        ),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlutterMultiChipSelect(
                    key: multiSelectKey,
                    elements: List.generate(
                      menuItems.length,
                      (index) => MultiSelectItem<String>.simple(
                          actions: [
                            IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () {
                                setState(() {
                                  menuItems.remove(menuItems[index]);
                                });
                                print("Delete Call at: " +
                                    menuItems[index].toString());
                              },
                            )
                          ],
                          title: "Item " + menuItems[index].toString(),
                          value: menuItems[index].toString()),
                    ),
                    label: "Dropdown Select",
                    values: [1, 2],
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.save),
                  onPressed: () {
                    setState(() {
                      _result =
                          this.multiSelectKey.currentState!.result.toString();
                    });
                  },
                ),
              ],
            ),
          ),
          Text((_result != "") ? "Save Result" + _result : "")
        ],
      ),
    );
  }
}
