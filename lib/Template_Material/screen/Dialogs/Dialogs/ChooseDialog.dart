import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/Card/Model/ConceptModel.dart';

class ChooseDialog extends StatefulWidget {
  ChooseDialog({Key? key}) : super(key: key);

  @override
  _ChooseDialogState createState() => _ChooseDialogState();
}

class _ChooseDialogState extends State<ChooseDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.99),
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Choose Dialog",
          style: TextStyle(fontFamily: "Sofia", fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: InkWell(
            onTap: () {
              showDialog(context: context, builder: (_) => ChooseDialogShow());
            },
            child: Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  color: Colors.greenAccent),
              child: Center(
                child: Text("Choose Dialog",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w800,
                        fontFamily: "Sofia")),
              ),
            )),
      ),
    );
  }
}

class ChooseDialogShow extends StatefulWidget {
  ChooseDialogShow({Key? key}) : super(key: key);

  @override
  ChooseDialogShowState createState() => new ChooseDialogShowState();
}

class ChooseDialogShowState extends State<ChooseDialogShow> {
  String? selectedRingtone = "None";
  List<String> ringtone = ["Red", "Green", "Blue", "Black"];

  @override
  Widget build(BuildContext context) {
    return new SimpleDialog(
      title: new Text("Color Choose :"),
      children: ringtone
          .map((index) => RadioListTile(
                title: Text(index),
                groupValue: selectedRingtone,
                selected: index == selectedRingtone,
                value: index,
                onChanged: (dynamic variab) {
                  setState(() {
                    selectedRingtone = variab;
                  });
                },
              ))
          .toList(),
    );
  }
}
