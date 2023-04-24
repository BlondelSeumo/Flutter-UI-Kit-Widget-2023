import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Home.dart';

class FilterBottomSheet extends StatefulWidget {
  FilterBottomSheet();

  @override
  FilterBottomSheetState createState() => new FilterBottomSheetState();
}

class FilterBottomSheetState extends State<FilterBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      body: Home(),
      floatingActionButton: FloatingActionButton(
        heroTag: "fab",
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
  TextStyle(color: Colors.white, height: 1.4, fontSize: 16);
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Food Type",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 18.0,
                              fontFamily: "Sofia")),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: new DropdownButton<String>(
                      hint: Text("Choose your food"),
                      items: <String>['Chicken', 'Meat', 'Tea', 'Coffe']
                          .map((String value) {
                        return new DropdownMenuItem<String>(
                          value: value,
                          child: new Text(value),
                        );
                      }).toList(),
                      onChanged: (_selectedLocation) {},
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          new Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Min Price",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18.0,
                                            fontFamily: "Sofia")),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: new DropdownButton<String>(
                                    hint: Text("  price"),
                                    items: <String>[
                                      '\$10',
                                      '\$20',
                                      '\$30',
                                      '\$40'
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (_selectedLocation) {},
                                  ),
                                ),
                              ],
                            ),
                            flex: 1,
                          ),
                          Container(
                            width: 40,
                          ),
                          new Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Max Price",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18.0,
                                            fontFamily: "Sofia")),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: new DropdownButton<String>(
                                    hint: Text("  price"),
                                    items: <String>[
                                      '\$100',
                                      '\$200',
                                      '\$300',
                                      '\$400'
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (_selectedLocation) {},
                                  ),
                                ),
                              ],
                            ),
                            flex: 1,
                          ),
                        ],
                      )),
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          new Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Min quantity",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18.0,
                                            fontFamily: "Sofia")),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: new DropdownButton<String>(
                                    hint: Text("  quantity"),
                                    items: <String>['1', '2', '3', '4']
                                        .map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (_selectedLocation) {},
                                  ),
                                ),
                              ],
                            ),
                            flex: 1,
                          ),
                          Container(
                            width: 40,
                          ),
                          new Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Max quantity",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18.0,
                                            fontFamily: "Sofia")),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: new DropdownButton<String>(
                                    hint: Text("  quantity"),
                                    items: <String>['10', '20', '30', '40']
                                        .map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (_selectedLocation) {},
                                  ),
                                ),
                              ],
                            ),
                            flex: 1,
                          ),
                        ],
                      )),
                  Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: SizedBox(
                        width: double.infinity, // match_parent
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0.0,
                            primary: Colors.transparent,
                          ),
                          child: Text(
                            "SEARCH",
                            style: TextStyle(
                                color: Colors.white, fontFamily: "Sofia"),
                          ),
                          onPressed: () {},
                        ),
                      )),
                  Container(
                    height: 10,
                  )
                ],
              ),
            ),
          ),
        );
      });
}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(
        width: 1, //
        color: Colors.grey[400]! //                  <--- border width here
        ),
  );
}
