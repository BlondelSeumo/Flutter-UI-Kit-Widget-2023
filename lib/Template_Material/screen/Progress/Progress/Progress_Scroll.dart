import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/Progress/Progress/Progress_Circle.dart';

class ProgressScroll extends StatefulWidget {
  @override
  _ProgressScrollState createState() => _ProgressScrollState();
}

class _ProgressScrollState extends State<ProgressScroll> {
  late List myList;
  ScrollController _scrollController = ScrollController();
  int _currentMax = 10;

  @override
  void initState() {
    super.initState();
    myList = List.generate(10, (i) => "Item : ${i + 1}");
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _getMoreData();
      }
    });
  }

  _getMoreData() {
    for (int i = _currentMax; i < _currentMax + 10; i++) {
      myList.add("Item : ${i + 1}");
    }

    _currentMax = _currentMax + 10;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text("Scroll Progress"),
      ),
      body: ListView.builder(
        controller: _scrollController,
        itemExtent: 80,
        itemBuilder: (context, i) {
          if (i == myList.length) {
            return Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.orangeAccent),
                backgroundColor: Colors.black12,
              ),
            );
          }
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 80.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12.withOpacity(0.05),
                        blurRadius: 10.0,
                        spreadRadius: 4.0)
                  ]),
              child: Center(
                  child: Text(
                myList[i],
                style: TextStyle(
                  fontFamily: "Sofia",
                ),
              )),
            ),
          );
        },
        itemCount: myList.length + 1,
      ),
    );
  }
}
