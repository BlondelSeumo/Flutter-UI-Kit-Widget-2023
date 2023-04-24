import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TermOfServicesDialog extends StatefulWidget {
  TermOfServicesDialog();

  @override
  TermOfServicesDialogState createState() => new TermOfServicesDialogState();
}

class TermOfServicesDialogState extends State<TermOfServicesDialog> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Term Of Service Dialog",
          style: TextStyle(fontFamily: "Sofia", fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: InkWell(
            onTap: () {
              showDialog(
                  context: context, builder: (_) => DialogTerfOfService());
            },
            child: Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  color: Colors.greenAccent),
              child: Center(
                child: Text("Term Of Service Dialog",
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

class DialogTerfOfService extends StatefulWidget {
  DialogTerfOfService({Key? key}) : super(key: key);

  @override
  DialogTerfOfServiceState createState() => new DialogTerfOfServiceState();
}

class DialogTerfOfServiceState extends State<DialogTerfOfService> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        color: Colors.white,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Term of Services",
                            style: TextStyle(
                                fontFamily: "Sofia",
                                fontWeight: FontWeight.w700,
                                fontSize: 19.0)),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.file_download, color: Colors.grey),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Divider(height: 0, thickness: 0.5),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(15),
                child: Text(
                    "1. Terms\n\n" +
                        termLong1 +
                        "\n\n\n" +
                        "2. Use Licence\n\n" +
                        termLong2 +
                        "\n\n\n" +
                        "3. Disclamer \n\n" +
                        termLong3,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontFamily: "Sofia",
                        color: Colors.black38,
                        fontWeight: FontWeight.w300)),
              ),
            ),
            Divider(height: 0, thickness: 0.5),
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
                  child: Text("DECLINE"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    primary: Colors.transparent,
                  ),
                  child: Text("ACCEPT"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}

String termLong1 =
    "By accessing this Apps, accessible from qubicle.com, you are agreeing to be bound by these Website Terms and Conditions of Use and agree that you are responsible for the agreement with any applicable local laws. If you disagree with any of these terms, you are prohibited from accessing this site. The materials contained in this Website are protected by copyright and trade mark law.";

String termLong2 =
    "Permission is granted to temporarily download one copy of the materials on qubicle's Website for personal, non-commercial transitory viewing only. This is the grant of a license, not a transfer of title, and under this license you may not This will let qubicle to terminate upon violations of any of these restrictions. Upon termination, your viewing right will also be terminated and you should destroy any downloaded materials in your possession whether it is printed or electronic format. These Terms of Service has been created with the help of the Terms Of Service Generator and the Privacy Policy Generator.";

String termLong3 =
    "All the materials on qubicle’s Website are provided as is. qubicle makes no warranties, may it be expressed or implied, therefore negates all other warranties. Furthermore, qubicle does not make any representations concerning the accuracy or reliability of the use of the materials on its Website or otherwise relating to such materials or any sites linked to this Website.";
