import 'package:flutter/material.dart';

class InformationScreen extends StatefulWidget {
  InformationScreen({Key? key}) : super(key: key);

  @override
  _InformationScreenState createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Setting",
          style: TextStyle(
            fontFamily: "Sofia",
          ),
        ),
      ),
      body: Column(
        children: [
          _card(Icons.share, "Share Apps"),
          _card(Icons.grade, "Ratting"),
          _card(Icons.text_snippet, "Our Portofolio"),
          _card(Icons.code, "Get Source Code"),
        ],
      ),
    );
  }

  Widget _card(IconData _icon, String _title) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 15.0, right: 15.0, top: 25.0, bottom: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(_icon),
              SizedBox(
                width: 15.0,
              ),
              Text(
                _title,
                style: TextStyle(fontFamily: "Sofia"),
              ),
            ],
          ),
          Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}
