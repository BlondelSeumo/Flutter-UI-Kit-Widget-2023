import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BugReportDialog extends StatefulWidget {
  BugReportDialog();

  @override
  BugReportDialogState createState() => new BugReportDialogState();
}

class BugReportDialogState extends State<BugReportDialog> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Bug Report Dialog",
          style: TextStyle(fontFamily: "Sofia", fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: InkWell(
            onTap: () {
              showDialog(
                  context: context, builder: (_) => ShowBugReportDialog());
            },
            child: Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  color: Colors.greenAccent),
              child: Center(
                child: Text("Bug Report Dialog",
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

class ShowBugReportDialog extends StatefulWidget {
  ShowBugReportDialog({Key? key}) : super(key: key);

  @override
  ShowBugReportDialogState createState() => new ShowBugReportDialogState();
}

class ShowBugReportDialogState extends State<ShowBugReportDialog> {
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
