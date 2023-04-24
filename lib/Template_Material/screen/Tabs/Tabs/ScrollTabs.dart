import 'package:flutter/material.dart';

class ScrollTabs extends StatefulWidget {
  ScrollTabs();

  @override
  ScrollTabsState createState() => new ScrollTabsState();
}

class ScrollTabsState extends State<ScrollTabs>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  ScrollController? _scrollController;

  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController!.dispose();
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF141C35),
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScroller) {
          return <Widget>[
            SliverAppBar(
              title: Text(
                'Scroll Tabs',
                style: TextStyle(
                    color: Colors.white, fontFamily: "Sofia", fontSize: 17.0),
              ),
              centerTitle: true,
              backgroundColor: Color(0xFF141C35),
              iconTheme: IconThemeData(color: Colors.white),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.search),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ],
              bottom: TabBar(
                indicatorColor: Color(0xFF45C2DA),
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 4,
                labelColor: Color(0xFF45C2DA),
                labelStyle: TextStyle(fontFamily: "Sofia", color: Colors.white),
                unselectedLabelColor: Colors.white60,
                tabs: [
                  Tab(
                    text: "Home",
                  ),
                  Tab(text: "Category"),
                  Tab(text: "Favorite"),
                  Tab(text: "Profile"),
                  Tab(text: "Seting"),
                ],
                controller: _tabController,
              ),
            )
          ];
        },
        body: TabBarView(
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
            Align(
                child: Text(
              "Tab 4",
              style: TextStyle(
                  fontFamily: "Sofia",
                  fontSize: 25.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w400),
            )),
            Align(
                child: Text(
              "Tab 5",
              style: TextStyle(
                  fontFamily: "Sofia",
                  fontSize: 25.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w400),
            )),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}
