import 'package:flutter/material.dart';

class IconTabs extends StatefulWidget {
  final Widget? child;

  IconTabs({Key? key, this.child}) : super(key: key);

  _IconTabsState createState() => _IconTabsState();
}

class _IconTabsState extends State<IconTabs>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  /// Set Top App Navigation Bar
  @override
  void initState() {
    _tabController = new TabController(length: 5, vsync: this, initialIndex: 4);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF141C35),

      ///
      /// Appbar
      ///
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 0.0,
        backgroundColor: Color(0xFF141C35),
        centerTitle: true,
        title: Text(
          "Icon Tabs",
          style: TextStyle(
              color: Colors.white, fontFamily: "Gotik", fontSize: 17.0),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          )
        ],
      ),

      ///
      /// Set container for tab bar custom in top (bottom appbar)
      ///
      body: ListView(
        children: <Widget>[
          Container(
            color: Color(0xFF141C35),
            height: 600.0,
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
                      backgroundColor: Color(0xFF141C35),
                      appBar: PreferredSize(
                        preferredSize:
                            Size.fromHeight(53.0), // here the desired height
                        child: new AppBar(
                          backgroundColor: Color(0xFF141C35),
                          elevation: 0.0,
                          centerTitle: true,
                          flexibleSpace: SafeArea(
                            child: Stack(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top: 46.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 2.5,
                                    color: Colors.white12.withOpacity(0.1),
                                  ),
                                ),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        right: 50.0, left: 50.0),
                                    child: new TabBar(
                                      // labelColor: Theme.of(context).primaryColor,
                                      indicatorColor: Color(0xFF45C2DA),
                                      labelStyle: TextStyle(
                                          fontFamily: "Sofia",
                                          color: Colors.white),
                                      labelColor:
                                          Theme.of(context).primaryColor,
                                      unselectedLabelColor: Colors.white24,
                                      indicatorSize: TabBarIndicatorSize.label,
                                      tabs: [
                                        new Tab(
                                          child: Icon(
                                            const IconData(0xe900,
                                                fontFamily: 'tab1'),
                                            size: 19.0,
                                          ),
                                        ),
                                        new Tab(
                                          child: Icon(
                                            const IconData(0xe900,
                                                fontFamily: 'tab2'),
                                            size: 21.0,
                                          ),
                                        ),
                                        new Tab(
                                          child: Icon(
                                            const IconData(0xe901,
                                                fontFamily: 'tab3'),
                                            size: 23.0,
                                          ),
                                        ),
                                        new Tab(
                                          child: Icon(
                                            const IconData(0xe902,
                                                fontFamily: 'tab4'),
                                            size: 22.0,
                                          ),
                                        ),
                                        new Tab(
                                          child: Icon(
                                            const IconData(0xe903,
                                                fontFamily: 'tab5'),
                                            size: 16.0,
                                          ),
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
                        padding: const EdgeInsets.only(top: 10.0),
                        child: new TabBarView(
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
                                  color: Colors.white,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.w400),
                            )),
                            Align(
                                child: Text(
                              "Tab 4",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  color: Colors.white,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.w400),
                            )),
                            Align(
                                child: Text(
                              "Tab 5",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  color: Colors.white,
                                  fontSize: 25.0,
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
