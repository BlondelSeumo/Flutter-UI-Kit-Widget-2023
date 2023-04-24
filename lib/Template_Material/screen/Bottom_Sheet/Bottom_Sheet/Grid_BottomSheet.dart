import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Home.dart';

class GridBottomSheet extends StatefulWidget {
  GridBottomSheet();

  @override
  GridBottomSheetState createState() => new GridBottomSheetState();
}

class GridBottomSheetState extends State<GridBottomSheet> {
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
          showSheet(context);
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
          height: 300.0,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _item('BURGER', Icons.fastfood),
                  _item('TEA', Icons.local_drink),
                  _item('BEER', Icons.local_drink),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _item('CAKE', Icons.cake),
                  _item('COFFEE', Icons.cloud),
                  _item('MEAT', Icons.restaurant),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _item('ICE', Icons.insert_chart),
                  _item('FISH', Icons.filter_tilt_shift),
                  _item('DONUTS', Icons.donut_small),
                ],
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

Widget _item(
  String _title,
  IconData _icon,
) {
  return Container(
    width: 90.0,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          _icon,
          color: Colors.black45,
          size: 26.0,
        ),
        Text(
          _title,
          style: TextStyle(
              fontFamily: "Sofia", fontSize: 16.0, color: Colors.black45),
        ),
      ],
    ),
  );
}
