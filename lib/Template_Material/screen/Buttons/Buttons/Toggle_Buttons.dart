import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Home.dart';

class ToggleButtonsMaterial extends StatefulWidget {
  ToggleButtonsMaterial();

  @override
  ToggleButtonsMaterialState createState() => new ToggleButtonsMaterialState();
}

class ToggleButtonsMaterialState extends State<ToggleButtonsMaterial> {
  late BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context = context;

    return Scaffold(
      body: Home(),
      floatingActionButton: buildSpeedDial(),
    );
  }

  Widget buildSpeedDial() {
    return SpeedDial(
      elevation: 2,
      animatedIcon: AnimatedIcons.menu_close,
      curve: Curves.linear,
      animationSpeed: 100,
      children: [
        SpeedDialChild(
          elevation: 2,
          child: Icon(Icons.search, color: Colors.black),
          backgroundColor: Colors.white,
          onTap: () {},
        ),
        SpeedDialChild(
          elevation: 2,
          child: Icon(Icons.add, color: Colors.black),
          backgroundColor: Colors.white,
          onTap: () {},
        ),
      ],
    );
  }
}
