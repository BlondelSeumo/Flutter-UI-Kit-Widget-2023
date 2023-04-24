import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Home.dart';

class ListItemBottomSheet extends StatefulWidget {
  ListItemBottomSheet();

  @override
  ListItemBottomSheetState createState() => new ListItemBottomSheetState();
}

class ListItemBottomSheetState extends State<ListItemBottomSheet> {
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
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.visibility),
                title: Text("Preview apps"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.person_add),
                title: Text("Share apps"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.link),
                title: Text("Get link apps"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.content_copy),
                title: Text("Make copy item"),
                onTap: () {},
              ),
            ],
          ),
        );
      });
}
