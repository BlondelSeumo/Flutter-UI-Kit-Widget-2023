import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:date_format/date_format.dart';

class TimePickerDialogScreen extends StatefulWidget {
  TimePickerDialogScreen();

  @override
  TimePickerDialogScreenState createState() =>
      new TimePickerDialogScreenState();
}

class TimePickerDialogScreenState extends State<TimePickerDialogScreen> {
  TextEditingController _timeController = TextEditingController();

  Future<Null> _selectTime(BuildContext context) async {
    String _hour, _minute, _time;

    String dateTime;

    DateTime selectedDate = DateTime.now();

    TimeOfDay selectedTime = TimeOfDay(hour: 00, minute: 00);

    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null)
      setState(() {
        selectedTime = picked;
        _hour = selectedTime.hour.toString();
        _minute = selectedTime.minute.toString();
        _time = _hour + ' : ' + _minute;
        _timeController.text = _time;
        _timeController.text = formatDate(
            DateTime(2019, 08, 1, selectedTime.hour, selectedTime.minute),
            [hh, ':', nn, " ", am]).toString();
      });
  }

  @override
  String? _setTime, _setDate;

  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Time Picker Dialog",
          style: TextStyle(fontFamily: "Sofia", fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Theme(
            data: ThemeData(accentColor: Colors.deepPurpleAccent),
            child: InkWell(
              onTap: () {
                _selectTime(context);
              },
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
                    hintStyle: TextStyle(fontFamily: "Sofia", fontSize: 18.0),
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
    );
  }
}

class ShowTimePickerDialogScreen extends StatefulWidget {
  ShowTimePickerDialogScreen({Key? key}) : super(key: key);

  @override
  ShowTimePickerDialogScreenState createState() =>
      new ShowTimePickerDialogScreenState();
}

class ShowTimePickerDialogScreenState
    extends State<ShowTimePickerDialogScreen> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        width: 160,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          color: Colors.white,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Wrap(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                color: Colors.redAccent,
                child: Column(
                  children: <Widget>[
                    Container(height: 10),
                    Row(
                      children: <Widget>[
                        Container(width: 15),
                        Text(
                          "Bug Report",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontWeight: FontWeight.w600,
                              fontSize: 21.0,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Icon(
                          Icons.report,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(25),
                width: double.infinity,
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        height: 150.0,
                        color: Colors.black12.withOpacity(0.05),
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                        child: TextField(
                          maxLines: 3,
                          style:
                              TextStyle(color: Colors.grey[600], fontSize: 18),
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText:
                                'Please type inform to our developer about this bug',
                            hintStyle: TextStyle(
                                fontSize: 16,
                                fontFamily: "Sofia",
                                color: Colors.black38),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
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
                            child: Text("CLOSE"),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0.0,
                              primary: Colors.transparent,
                            ),
                            child: Text("SUBMIT",
                                style: TextStyle(color: Colors.black)),
                            onPressed: () {},
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
