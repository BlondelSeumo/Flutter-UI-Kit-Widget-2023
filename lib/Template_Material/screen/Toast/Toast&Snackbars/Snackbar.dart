import 'package:flutter/material.dart';

class SnackbarScreen extends StatefulWidget {
  SnackbarScreen({Key? key}) : super(key: key);

  @override
  _SnackbarScreenState createState() => _SnackbarScreenState();
}

class _SnackbarScreenState extends State<SnackbarScreen> {
  late BuildContext _context;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Snackbar",
          style: TextStyle(fontFamily: "Sofia", fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Builder(builder: (BuildContext context) {
        _context = context;
        return Align(
          alignment: Alignment.center,
          child: InkWell(
            onTap: () {
              snackBarWidget(context);
            },
            child: Container(
              width: 300,
              height: 50.0,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(50.0))),
              child: Center(
                child: Text("Snackbar",
                    style: TextStyle(color: Colors.white, fontFamily: "Sofia")),
              ),
            ),
          ),
        );
      }),
    );
  }

  void snackBarWidget(BuildContext context) {
    ScaffoldMessenger.of(_context).showSnackBar(SnackBar(
      content: Text("Snackbar Description"),
      backgroundColor: Colors.blueAccent,
      duration: Duration(seconds: 2),
      action: SnackBarAction(
        label: "Action",
        textColor: Colors.white,
        onPressed: () {},
      ),
    ));
  }
}
