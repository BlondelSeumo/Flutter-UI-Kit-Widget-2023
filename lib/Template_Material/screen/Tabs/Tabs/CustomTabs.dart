import 'package:flutter/material.dart';

class CustomTabs extends StatefulWidget {
  CustomTabs({Key? key}) : super(key: key);

  _CustomTabsState createState() => _CustomTabsState();
}

class _CustomTabsState extends State<CustomTabs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF313237),

      ///
      /// Appbar
      ///
      appBar: AppBar(
        title: Text(
          "Custom Tabs",
          style: TextStyle(
              color: Colors.white, fontFamily: "Popins", fontSize: 17.0),
        ),
        centerTitle: true,
        brightness: Brightness.dark,
        backgroundColor: Color(0xFF313237),
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.lightBlue),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 5.0,
          ),

          ///
          /// Custom tab bar
          ///
          Expanded(
            child: DefaultTabController(
              length: 3,
              child: new Scaffold(
                backgroundColor: Colors.transparent,
                appBar: PreferredSize(
                  preferredSize:
                      Size.fromHeight(42.0), // here the desired height
                  child: new AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0.0,
                    centerTitle: true,
                    automaticallyImplyLeading: false,
                    title: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(75.0)),
                          border: Border.all(color: Colors.black54),
                          color: Colors.black26),
                      child: new TabBar(
                        indicatorColor: Color(0xFF31A1C9),
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.white54,
                        indicator: ShapeDecoration.fromBoxDecoration(
                            BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                                color: Color(0xFF31A1C9))),
                        tabs: [
                          new Tab(
                            child: Text(
                              "Year",
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          new Tab(
                              child: Text(
                            "Month",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w300,
                            ),
                          )),
                          new Tab(
                              child: Text(
                            "Day",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w300,
                            ),
                          ))
                        ],
                      ),
                    ),
                  ),
                ),

                ///
                /// Body tabBar
                ///
                body: new TabBarView(
                  children: [
                    Align(
                        child: Text(
                      "Tab 1",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          fontSize: 25.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    )),
                    Align(
                        child: Text(
                      "Tab 2",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          fontSize: 25.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    )),
                    Align(
                        child: Text(
                      "Tab 3",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          fontSize: 25.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
