import 'dart:async';

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/Loading_Animation/Model/cardDinner.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/Loading_Animation/Model/cardNear.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/Loading_Animation/Model/modelPupular.dart';
import 'package:shimmer/shimmer.dart';

class Concept1Loading extends StatefulWidget {
  Concept1Loading({Key? key}) : super(key: key);

  @override
  _Concept1LoadingState createState() => _Concept1LoadingState();
}

class _Concept1LoadingState extends State<Concept1Loading> {
  @override
  bool loadData = true;

  @override
  void initState() {
    Timer(Duration(milliseconds: 3500), () {
      setState(() {
        loadData = false;
      });
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Concept 1",
          style: TextStyle(fontFamily: "Sofia", fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: loadData ? animationloadData() : Loaded(),
    );
  }
}

class Loaded extends StatelessWidget {
  const Loaded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      "https://firebasestorage.googleapis.com/v0/b/recipeadmin-9b5fb.appspot.com/o/banner1.png?alt=media&token=63118ed4-006e-4f7f-b33f-c907cddd0f4a",
      "https://firebasestorage.googleapis.com/v0/b/recipeadmin-9b5fb.appspot.com/o/banner2.png?alt=media&token=b445b1ad-9f7d-45e1-9527-470ed7ab995a",
      "https://firebasestorage.googleapis.com/v0/b/recipeadmin-9b5fb.appspot.com/o/banner3.png?alt=media&token=b50b93f7-960c-45f1-943c-51180dd5c3b2",
      "https://firebasestorage.googleapis.com/v0/b/recipeadmin-9b5fb.appspot.com/o/banner4.png?alt=media&token=3a9fd1cd-91cd-4f19-976c-8d41c5f3ab29",
      "https://firebasestorage.googleapis.com/v0/b/recipeadmin-9b5fb.appspot.com/o/banner5.png?alt=media&token=3e985976-45eb-4a86-8930-a615ca72e41e",
    ];

    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          Stack(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Hello ",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontWeight: FontWeight.w800,
                              fontSize: 33.0,
                              letterSpacing: 0.5,
                              color: Colors.black.withOpacity(0.7)),
                        ),
                        Text(
                          "Sofia",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontWeight: FontWeight.w800,
                              fontSize: 33.0,
                              letterSpacing: 0.5,
                              color: Colors.black.withOpacity(0.7)),
                        ),
                      ]),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Column(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 45.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 5.0,
                                  spreadRadius: 0.0)
                            ]),
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 15.0, right: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.search,
                                    color: Color(0xFFFF975D),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    "Find a food recipes",
                                    style: TextStyle(
                                        color: Colors.grey[400],
                                        fontFamily: "Sofia",
                                        fontSize: 16.0),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 3.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: 190,
                      aspectRatio: 24 / 18,
                      viewportFraction: 0.9,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    ),
                    items: imgList.map((item) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(
                            horizontal: 5.0, vertical: 4.0),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 9.0,
                                  spreadRadius: 7.0,
                                  color: Colors.black12.withOpacity(0.03))
                            ],
                            image: DecorationImage(
                                image: NetworkImage(item), fit: BoxFit.cover),
                            color: Color(0xFF23252E)),
                      );
                    }).toList(),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Categories",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontSize: 18.5,
                              color: Colors.black.withOpacity(0.9),
                              fontWeight: FontWeight.w600),
                        ),
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                  ),
                  child: Container(
                    height: 110.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        SizedBox(
                          width: 20.0,
                        ),
                        cardPopular(
                            image: "assets/icon/amerika.png",
                            title: "Lunch",
                            category: "Lunch"),
                        cardPopular(
                            image: "assets/icon/thailand.png",
                            title: "Dinner",
                            category: "Dinner"),
                        cardPopular(
                            image: "assets/icon/england.png",
                            title: "Breakfast",
                            category: "Breakfast"),
                        cardPopular(
                            image: "assets/icon/italia.png",
                            title: "Cafe",
                            category: "Cafe"),
                        cardPopular(
                            image: "assets/icon/spanyol.png",
                            title: "HealtyFood",
                            category: "Healty"),
                      ],
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 25.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Suggest",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  fontSize: 18.5,
                                  color: Colors.black.withOpacity(0.9),
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "See all",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  color: Colors.black54,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400),
                            ),
                          ]),
                    ),
                    Container(
                      height: 195.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        primary: false,
                        itemBuilder: (ctx, index) {
                          return cardNear(modelNearArray[index]);
                        },
                        itemCount: modelNearArray.length,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 30.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Trending",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  fontSize: 18.5,
                                  color: Colors.black.withOpacity(0.9),
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "See all",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  color: Colors.black54,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400),
                            ),
                          ]),
                    ),
                    Container(
                      height: 195.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        primary: false,
                        itemBuilder: (ctx, index) {
                          return cardTrending(modelPopularArray[index]);
                        },
                        itemCount: modelPopularArray.length,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Popular",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontSize: 18.5,
                              color: Colors.black.withOpacity(0.9),
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "See all",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              color: Colors.black54,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400),
                        ),
                      ]),
                ),
                Container(
                  child: ListView.builder(
                    padding: EdgeInsets.only(top: 10.0),
                    shrinkWrap: true,
                    primary: false,
                    itemBuilder: (ctx, index) {
                      return cardDinner(modelDinnerArray[index]);
                    },
                    itemCount: modelDinnerArray.length,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class animationloadData extends StatelessWidget {
  @override
  final color = Colors.black38;
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Shimmer.fromColors(
            baseColor: color,
            highlightColor: Colors.white,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40.0,
                    width: 170.0,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          topLeft: Radius.circular(10.0)),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    height: 45.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(Icons.search, color: Colors.white),
                          SizedBox(
                            width: 5.0,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 200.0,
                    width: double.infinity,
                    color: Colors.black12,
                    alignment: Alignment.topRight,
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Container(
                    height: 40.0,
                    width: 120.0,
                    color: Colors.black12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Container(
                            height: 100.0,
                            width: MediaQuery.of(context).size.width / 3.8,
                            color: Colors.black12,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Container(
                            height: 100.0,
                            width: MediaQuery.of(context).size.width / 3.8,
                            color: Colors.black12,
                          ),
                        ),
                        Container(
                          height: 100.0,
                          width: MediaQuery.of(context).size.width / 3.8,
                          color: Colors.black12,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Container(
                    height: 40.0,
                    width: 120.0,
                    color: Colors.black12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Container(
                            height: 100.0,
                            width: MediaQuery.of(context).size.width / 2.5,
                            color: Colors.black12,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Container(
                            height: 100.0,
                            width: MediaQuery.of(context).size.width / 2.5,
                            color: Colors.black12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}

/// Component category class to set list
class category extends StatelessWidget {
  @override
  String? txt, image;
  GestureTapCallback? tap;
  double? padding, sizeImage;

  category({this.txt, this.image, this.tap, this.padding, this.sizeImage});

  Widget build(BuildContext context) {
    return InkWell(
      onTap: tap,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: padding!),
                      child: Image.network(
                        image!,
                        height: sizeImage,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Text(
                        txt!,
                        style: TextStyle(
                          fontSize: 14.5,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Sofia",
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                    size: 15.0,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 0.1,
            color: Colors.black87,
          )
        ],
      ),
    );
  }
}

class cardPopular extends StatelessWidget {
  String? image, title, userId, category;
  cardPopular({this.title, this.image, this.userId, this.category});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 5.0, right: 5.0, bottom: 4.0, top: 3.0),
      child: InkWell(
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 98.0,
              width: 99.0,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12.withOpacity(0.04),
                      blurRadius: 3.0,
                      spreadRadius: 1.0)
                ],
                color: Colors.white,
                border: Border.all(color: Colors.grey[300]!, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        image!,
                        height: 45,
                        width: 45,
                        colorBlendMode: BlendMode.darken,
                      )),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    title!,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Sofia",
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class cardNear extends StatelessWidget {
  modelNear _modelNear;
  cardNear(this._modelNear);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              child: Container(
                height: 110.0,
                width: 180.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(_modelNear.image!),
                      fit: BoxFit.cover),
                  boxShadow: [
                    BoxShadow(blurRadius: 0.0, color: Colors.black87)
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  gradient: LinearGradient(
                      colors: [Colors.white, Colors.white],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight),
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: ingredients.map((item) => new Text(item)).toList()),
            Container(
              width: 170.0,
              child: Text(
                _modelNear.title!,
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Sofia",
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(
              height: 2.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 2.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.query_builder,
                        size: 18.0,
                        color: Colors.black26,
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        _modelNear.time!,
                        style: TextStyle(
                            color: Colors.black45,
                            fontFamily: "Sofia",
                            fontSize: 14.0,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.whatshot,
                        size: 18.0,
                        color: Colors.black26,
                      ),
                      Text(
                        _modelNear.calorie!,
                        style: TextStyle(
                            color: Colors.black45,
                            fontFamily: "Sofia",
                            fontSize: 14.0,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.star,
                  size: 20.0,
                  color: Colors.yellow,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3.0),
                  child: Text(
                    _modelNear.rating.toString(),
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Sofia",
                        fontSize: 14.0),
                  ),
                ),
                SizedBox(
                  width: 35.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class cardTrending extends StatelessWidget {
  modelPopular _modelPopular;
  cardTrending(this._modelPopular);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              child: Container(
                height: 110.0,
                width: 180.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(_modelPopular.image!),
                      fit: BoxFit.cover),
                  boxShadow: [
                    BoxShadow(blurRadius: 0.0, color: Colors.black87)
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  gradient: LinearGradient(
                      colors: [Colors.white, Colors.white],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight),
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: ingredients.map((item) => new Text(item)).toList()),
            Container(
              width: 170.0,
              child: Text(
                _modelPopular.title!,
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Sofia",
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(
              height: 2.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 2.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.query_builder,
                        size: 18.0,
                        color: Colors.black26,
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        _modelPopular.time!,
                        style: TextStyle(
                            color: Colors.black45,
                            fontFamily: "Sofia",
                            fontSize: 14.0,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.whatshot,
                        size: 18.0,
                        color: Colors.black26,
                      ),
                      Text(
                        _modelPopular.calorie!,
                        style: TextStyle(
                            color: Colors.black45,
                            fontFamily: "Sofia",
                            fontSize: 14.0,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.star,
                  size: 20.0,
                  color: Colors.yellow,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3.0),
                  child: Text(
                    _modelPopular.rating.toString(),
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Sofia",
                        fontSize: 14.0),
                  ),
                ),
                SizedBox(
                  width: 35.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class cardDinner extends StatelessWidget {
  modelDinner _modelDinner;
  cardDinner(this._modelDinner);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Material(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              color: Color(0xFF1E2026),
              child: Container(
                height: 110.0,
                width: 110.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(_modelDinner.image!),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(blurRadius: 0.0, color: Colors.black87)
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  gradient: LinearGradient(colors: [
                    Color(0xFF1E2026),
                    Color(0xFF23252E),
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 19.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 200.0,
                    child: Text(
                      _modelDinner.title!,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Sofia",
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.query_builder,
                              size: 19.0,
                              color: Colors.black26,
                            ),
                            SizedBox(
                              width: 4.0,
                            ),
                            Text(
                              _modelDinner.time!,
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontFamily: "Sofia",
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.whatshot,
                              size: 19.0,
                              color: Colors.black26,
                            ),
                            Text(
                              _modelDinner.calorie!,
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontFamily: "Sofia",
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              size: 21.0,
                              color: Colors.yellow,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3.0),
                              child: Text(
                                _modelDinner.rating.toString(),
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Sofia",
                                    fontSize: 16.0),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 27.0,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 15.0, right: 15.0),
                            child: Center(
                              child: Text(
                                _modelDinner.category!,
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
