import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class BasicTabs extends StatefulWidget {
  BasicTabs();

  @override
  BasicTabsState createState() => new BasicTabsState();
}

class BasicTabsState extends State<BasicTabs>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  ScrollController? _scrollController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
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
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScroller) {
          return <Widget>[
            SliverAppBar(
              title: Text(
                'Basic',
                style: TextStyle(fontFamily: "Sofia"),
              ),
              pinned: true,
              floating: true,
              backgroundColor: Colors.orangeAccent,
              forceElevated: innerBoxIsScroller,
              centerTitle: true,
              actions: <Widget>[
                PopupMenuButton<String>(
                  onSelected: (String value) {},
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text("Refresh"),
                    ),
                    PopupMenuItem(
                      child: Text("Logout"),
                    ),
                  ],
                )
              ],
              bottom: TabBar(
                indicatorColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 4,
                tabs: [
                  Tab(icon: Text("Home")),
                  Tab(icon: Text("Category")),
                  Tab(icon: Text("Favorite")),
                  Tab(icon: Text("Profile")),
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
              "Home Screen ",
            )),
            Align(
                child: Text(
              "Category Screen",
            )),
            Align(
                child: Text(
              "Favorite Screen",
            )),
            Align(
                child: Text(
              "Profile Screen",
            )),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}
