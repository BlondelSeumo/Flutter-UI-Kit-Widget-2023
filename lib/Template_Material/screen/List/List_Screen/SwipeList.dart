import 'package:flutter/material.dart';

class SwipeList extends StatefulWidget {
  SwipeList({Key? key}) : super(key: key);

  @override
  _SwipeListState createState() => _SwipeListState();
}

class _SwipeListState extends State<SwipeList> {
  final List<Post> items = [];
  @override

  ///
  /// Add data for notification data dummy
  ///
  void initState() {
    super.initState();
    setState(() {
      items.add(
        Post(
            image: "assets/images/deals_layout/buildingMenu.png",
            id: 1,
            title: "Bank Account",
            desc: "Thanks for downloaded ui kit from jipau"),
      );
      items.add(
        Post(
            image: "assets/images/deals_layout/buildingMenu.png",
            id: 2,
            title: "Bank Account",
            desc: "Your transaction done in 21/04/2019"),
      );
      items.add(
        Post(
            image: "assets/images/deals_layout/buildingMenu.png",
            id: 3,
            title: "Bank Account",
            desc: "Pending payment"),
      );
      items.add(
        Post(
            image: "assets/images/deals_layout/buildingMenu.png",
            id: 4,
            title: "Bank Account",
            desc: "Get spesial discount for use wallet "),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Swipe List",
          style: TextStyle(fontFamily: "Sofia"),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: items.length > 0
                ? ListView.builder(
                    itemCount: items.length,
                    padding: const EdgeInsets.all(5.0),
                    itemBuilder: (context, position) {
                      return Dismissible(
                          key: Key(items[position].id.toString()),
                          onDismissed: (direction) {
                            setState(() {
                              items.removeAt(position);
                            });
                          },
                          background: Container(
                            color: Color(0xFFFFBBCF),
                          ),
                          child: Container(
                            height: 88.0,
                            child: Column(
                              children: <Widget>[
                                Divider(
                                  height: 5.0,
                                  color: Colors.black12,
                                ),
                                ListTile(
                                  title: Text(
                                    '${items[position].title}',
                                    style: TextStyle(
                                        fontSize: 17.5,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  subtitle: Padding(
                                    padding: const EdgeInsets.only(top: 6.0),
                                    child: Container(
                                      width: 440.0,
                                      child: Text(
                                        '${items[position].desc}',
                                        style: new TextStyle(
                                            fontSize: 15.0,
                                            fontStyle: FontStyle.italic,
                                            color: Colors.black38),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                  leading: Column(
                                    children: <Widget>[
                                      Container(
                                        height: 40.0,
                                        width: 40.0,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(60.0)),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    '${items[position].image}'),
                                                fit: BoxFit.cover)),
                                      )
                                    ],
                                  ),
                                  onTap: () =>
                                      _onTapItem(context, items[position]),
                                ),
                                Divider(
                                  height: 5.0,
                                  color: Colors.black12,
                                ),
                              ],
                            ),
                          ));
                    })
                : noItemNotifications(),
          )
        ],
      ),
    );
  }

  void _onTapItem(BuildContext context, Post post) {
    ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
        content: new Text(post.id.toString() + ' - ' + post.title!)));
  }

  Widget noItemNotifications() {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      width: 500.0,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding:
                    EdgeInsets.only(top: mediaQueryData.padding.top + 50.0)),
            Padding(padding: EdgeInsets.only(bottom: 30.0)),
            Center(
              child: Text(
                "Not Have Notification",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18.5,
                    color: Colors.black54,
                    fontFamily: "Gotik"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Post {
  final String? image;
  final int? id;
  final String? title;
  final String? desc;

  Post({this.image, this.id, this.title, this.desc});
}
