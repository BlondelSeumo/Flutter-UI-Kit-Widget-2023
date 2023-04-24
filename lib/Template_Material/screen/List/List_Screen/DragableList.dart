import 'package:flutter/material.dart';

class ListDraggableRoute extends StatefulWidget {
  ListDraggableRoute();

  @override
  ListDraggableRouteState createState() => new ListDraggableRouteState();
}

class ListDraggableRouteState extends State<ListDraggableRoute> {
  late BuildContext context;
  final List<Post> items = [];

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
            desc: "Thank you"),
      );
      items.add(
        Post(
            image: "assets/images/deals_layout/cardMenu.png",
            id: 2,
            title: "Bank Account",
            desc: "Your transaction done in 21/04/2019"),
      );
      items.add(
        Post(
            image: "assets/images/deals_layout/financeMenu.png",
            id: 3,
            title: "Bank Account",
            desc: "Pending payment"),
      );
      items.add(
        Post(
            image: "assets/images/deals_layout/findMenu.png",
            id: 4,
            title: "Bank Account",
            desc: "Get spesial discount"),
      );
      items.add(
        Post(
            image: "assets/images/deals_layout/giveMenu.png",
            id: 5,
            title: "Bank Account",
            desc: "Succes Account"),
      );
      items.add(
        Post(
            image: "assets/images/deals_layout/growthMenu.png",
            id: 6,
            title: "Bank Account",
            desc: "Discount for use wallet "),
      );
      items.add(
        Post(
            image: "assets/images/deals_layout/locationMenu.png",
            id: 7,
            title: "Bank Account",
            desc: "Discount 10%"),
      );
      items.add(
        Post(
            image: "assets/images/deals_layout/moneyMenu.png",
            id: 8,
            title: "Bank Account",
            desc: "Discount 20%"),
      );
      items.add(
        Post(
            image: "assets/images/deals_layout/saveMenu.png",
            id: 9,
            title: "Bank Account",
            desc: "Discount 30%"),
      );
      items.add(
        Post(
            image: "assets/images/deals_layout/shareMenu.png",
            id: 10,
            title: "Bank Account",
            desc: "Discount 40%"),
      );
    });
  }

  void _function() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;

    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          " Dragable List",
          style: TextStyle(fontFamily: "Sofia"),
        ),
      ),
      body: DragableList(items, _function).getWidget(),
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

class DragableList {
  List items = <Post>[];
  Function _function;

  DragableList(this.items, this._function);

  Widget getWidget() {
    return ReorderableListView(
      onReorder: __function,
      scrollDirection: Axis.vertical,
      children: List.generate(
        this.items.length,
        (index) {
          return Item(Key('$index'), index, this.items[index]);
        },
      ),
    );
  }

  void __function(int oldIndex, int newIndex) {
    if (newIndex > oldIndex) newIndex -= 1;
    final Post item = this.items.removeAt(oldIndex);
    this.items.insert(newIndex, item);
    this._function();
  }
}

class Item extends StatelessWidget {
  final Post data;
  final int index;
  final Key key;

  const Item(this.key, this.index, this.data);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(
          key: PageStorageKey<int>(index),
          leading: Container(
              child: CircleAvatar(
                backgroundImage: AssetImage(data.image!),
              ),
              width: 35,
              height: 35),
          title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.title!,
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontSize: 18.0,
                      fontWeight: FontWeight.w800),
                ),
                Text(
                  data.desc!,
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontSize: 15.0,
                      fontWeight: FontWeight.w200),
                )
              ]),
          trailing: Icon(Icons.menu),
        ),
        Divider(height: 0)
      ],
    );
  }
}
