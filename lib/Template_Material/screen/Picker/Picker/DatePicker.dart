import 'package:flutter/material.dart';
import 'dart:io';
import 'package:intl/intl.dart';

class DatePicker extends StatefulWidget {
  DatePicker({Key? key}) : super(key: key);

  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  @override
  String? _setDate;
  String? dateTime;

  String? _setTime;

  DateTime selectedDate = DateTime.now();
  TextEditingController _dateController = TextEditingController();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(2015),
        lastDate: DateTime(2101));
    if (picked != null)
      setState(() {
        selectedDate = picked;
        _dateController.text = DateFormat.yMd().format(selectedDate);
      });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Date Picker",
          style: TextStyle(fontFamily: "Sofia", fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Theme(
              data: ThemeData(accentColor: Colors.deepPurpleAccent),
              child: InkWell(
                onTap: () {
                  _selectDate(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    //  margin: EdgeInsets.only(top: 30),
                    width: double.infinity,
                    height: 55.0,
                    alignment: Alignment.center,
                    //  decoration: BoxDecoration(color: Colors.grey[200]),
                    child: TextFormField(
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Sofia",
                      ),
                      textAlign: TextAlign.left,
                      onSaved: (String? val) {
                        _setTime = val;
                      },
                      enabled: false,
                      keyboardType: TextInputType.text,
                      controller: _dateController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(13.0),
                        hintText: "Select Date",
                        hintStyle:
                            TextStyle(fontFamily: "Sofia", fontSize: 18.0),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 0.5,
                                color: Colors.black12.withOpacity(0.1))),
                        // labelText: 'Time',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
