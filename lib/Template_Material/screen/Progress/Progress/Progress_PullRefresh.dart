import 'dart:io';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PullRefreshProgress extends StatefulWidget {
  @override
  _PullRefreshProgressState createState() => _PullRefreshProgressState();
}

class _PullRefreshProgressState extends State<PullRefreshProgress> {
  final listData = <User>[];

  @override
  void initState() {
    listData
      ..add(User('User', 25))
      ..add(User('User', 30))
      ..add(User('User', 22));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Pull Refresh',
          style: TextStyle(fontFamily: "Sofia"),
        ),
      ),
      body: Platform.isIOS
          ? _buildWidgetListDataIOS()
          : _buildWidgetListDataAndroid(),
    );
  }

  Widget _buildWidgetListDataIOS() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CustomScrollView(
        slivers: [
          CupertinoSliverRefreshControl(
            onRefresh: refreshData,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              var user = listData[index];
              return _buildWidgetItemListData(user, context);
            }, childCount: listData.length),
          ),
        ],
      ),
    );
  }

  Widget _buildWidgetListDataAndroid() {
    return RefreshIndicator(
      onRefresh: refreshData,
      child: ListView.builder(
        padding: EdgeInsets.all(16),
        itemBuilder: (context, index) {
          var user = listData[index];
          return _buildWidgetItemListData(user, context);
        },
        itemCount: listData.length,
      ),
    );
  }

  Widget _buildWidgetItemListData(User user, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 80.0,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black12.withOpacity(0.05),
                  blurRadius: 10.0,
                  spreadRadius: 4.0)
            ]),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Row(
            children: [
              Icon(
                Icons.account_circle_sharp,
                color: Colors.black38,
                size: 40.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Private ID: " + user.name,
                      style: TextStyle(
                          fontFamily: "Sofia",
                          fontSize: 17.0,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "Age: " + '${user.value}' + " Old ",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          fontSize: 15.0,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }

  Future refreshData() async {
    listData.clear();
    await Future.delayed(Duration(seconds: 2));
    for (var index = 0; index < 10; index++) {
      var name = 'User ${index + 1}';
      var value = Random().nextInt(100);
      listData.add(User(name, value));
    }
    setState(() {});
  }
}

class User {
  final String name;
  final int value;

  User(this.name, this.value);
}
