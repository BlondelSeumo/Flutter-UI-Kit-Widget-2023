import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class IconTextTabs extends StatefulWidget {
  IconTextTabs();

  @override
  IconTextTabsState createState() => new IconTextTabsState();
}

class IconTextTabsState extends State<IconTextTabs>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  ScrollController? _scrollController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
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
                'Icon Tabs',
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
                  Tab(
                    icon: Row(
                      children: [
                        Icon(
                          Icons.home,
                          size: 19.0,
                        ),
                        SizedBox(
                          width: 3.0,
                        ),
                        Text("Home")
                      ],
                    ),
                  ),
                  Tab(
                    icon: Row(
                      children: [
                        Icon(
                          Icons.category,
                          size: 19.0,
                        ),
                        SizedBox(
                          width: 3.0,
                        ),
                        Text("Category")
                      ],
                    ),
                  ),
                  Tab(
                    icon: Row(
                      children: [
                        Icon(
                          Icons.favorite,
                          size: 19.0,
                        ),
                        SizedBox(
                          width: 3.0,
                        ),
                        Text("Favorite")
                      ],
                    ),
                  ),
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
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}
