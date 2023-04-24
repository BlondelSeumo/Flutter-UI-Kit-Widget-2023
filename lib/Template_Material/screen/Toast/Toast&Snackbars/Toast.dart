import 'package:flutter/material.dart';

class ToastScreen extends StatefulWidget {
  ToastScreen({Key? key}) : super(key: key);

  @override
  _ToastScreenState createState() => _ToastScreenState();
}

class _ToastScreenState extends State<ToastScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Toast",
          style: TextStyle(fontFamily: "Sofia", fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Align(
        alignment: Alignment.center,
        child: InkWell(
          onTap: () {
            showToast(context);
          },
          child: Container(
            width: 300,
            height: 50.0,
            decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.all(Radius.circular(50.0))),
            child: Center(
              child: Text("Toast",
                  style: TextStyle(color: Colors.white, fontFamily: "Sofia")),
            ),
          ),
        ),
      ),
    );
  }
}

void showToast(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text("Sending Message"),
  ));
}
