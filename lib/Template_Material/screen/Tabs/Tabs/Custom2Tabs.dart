import 'package:flutter/material.dart';

class Custom2Tabs extends StatefulWidget {
  Custom2Tabs({Key? key}) : super(key: key);

  _Custom2TabsState createState() => _Custom2TabsState();
}

class _Custom2TabsState extends State<Custom2Tabs>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  ///
  /// Initstate for tab bar
  ///
  @override
  void initState() {
    _tabController = new TabController(length: 5, vsync: this, initialIndex: 4);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      ///
      /// Appbar
      ///
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 0.0,
        backgroundColor: Color(0xFF4d2a86),
        centerTitle: true,
        title: Text(
          "Custom 2 Tabs",
          style: TextStyle(color: Colors.white, fontFamily: "Sofia"),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ))
        ],
      ),

      body: ListView(
        primary: true,
        shrinkWrap: false,
        children: <Widget>[
          Container(
            color: Color(0xFF4d2a86),
            height: 800.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ///
                /// Custom tab bar
                ///
                Expanded(
                  child: DefaultTabController(
                    length: 5,
                    child: new Scaffold(
                      backgroundColor: Color(0xFF4d2a86),
                      appBar: PreferredSize(
                        preferredSize:
                            Size.fromHeight(70.0), // here the desired height
                        child: new AppBar(
                          backgroundColor: Color(0xFF4d2a86),
                          elevation: 0.0,
                          centerTitle: true,
                          flexibleSpace: SafeArea(
                            child: Stack(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top: 68.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 4.1,
                                    color: Colors.white12.withOpacity(0.1),
                                  ),
                                ),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        right: 0.0, left: 0.0),
                                    child: new TabBar(
                                      indicatorColor: Colors.white,
                                      labelColor: Colors.white,
                                      labelStyle: TextStyle(
                                          fontFamily: "Sofia", fontSize: 12.0),
                                      unselectedLabelColor: Colors.white24,
                                      indicatorSize: TabBarIndicatorSize.label,
                                      tabs: [
                                        new Tab(
                                          icon: Icon(
                                            Icons.remove_circle_outline,
                                            size: 19.0,
                                          ),
                                          text: "Home",
                                        ),
                                        new Tab(
                                          icon: Icon(
                                            Icons.work,
                                            size: 19.0,
                                          ),
                                          text: "Deals",
                                        ),
                                        new Tab(
                                          icon: Icon(
                                            Icons.account_balance,
                                            size: 19.0,
                                          ),
                                          text: "Wallet",
                                        ),
                                        new Tab(
                                          icon: Icon(
                                            Icons.monetization_on,
                                            size: 19.0,
                                          ),
                                          text: "Finance",
                                        ),
                                        new Tab(
                                          icon: Icon(
                                            Icons.signal_cellular_4_bar,
                                            size: 19.0,
                                          ),
                                          text: "History",
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          automaticallyImplyLeading: false,
                        ),
                      ),

                      ///
                      /// Body for tab bar
                      ///
                      body: Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: new TabBarView(
                          children: [
                            Align(
                                child: Text(
                              "Home",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  fontSize: 25.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            )),
                            Align(
                                child: Text(
                              "Deals",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  fontSize: 25.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            )),
                            Align(
                                child: Text(
                              "Wallet",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  fontSize: 25.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            )),
                            Align(
                                child: Text(
                              "Finance",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  fontSize: 25.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            )),
                            Align(
                                child: Text(
                              "History",
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
