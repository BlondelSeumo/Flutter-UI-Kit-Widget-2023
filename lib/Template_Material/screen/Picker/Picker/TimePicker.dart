import 'package:flutter/material.dart';
import 'dart:io';
import 'package:intl/intl.dart';

import 'package:date_format/date_format.dart';

class TimePicker extends StatefulWidget {
  TimePicker({Key? key}) : super(key: key);

  @override
  _TimePickerState createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  @override
  String? _setDate;
  String? dateTime;
  String? _hour, _minute, _time;

  String? _setTime;
  TextEditingController _timeController = TextEditingController();

  TimeOfDay selectedTime = TimeOfDay(hour: 00, minute: 00);

  DateTime selectedDate = DateTime.now();
  TextEditingController _dateController = TextEditingController();

  Future<Null> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null)
      setState(() {
        selectedTime = picked;
        _hour = selectedTime.hour.toString();
        _minute = selectedTime.minute.toString();
        _time = _hour! + ' : ' + _minute!;
        _timeController.text = _time!;
        _timeController.text = formatDate(
            DateTime(2019, 08, 1, selectedTime.hour, selectedTime.minute),
            [hh, ':', nn, " ", am]).toString();
      });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Time Picker",
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
                  _selectTime(context);
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
                      controller: _timeController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(13.0),
                        hintText: "Select Time",
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
