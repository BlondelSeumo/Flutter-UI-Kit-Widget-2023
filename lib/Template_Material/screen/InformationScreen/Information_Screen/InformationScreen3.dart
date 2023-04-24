import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:bigkit_material_null_safety/Template_Material/Sample_Screen/Animation/FadeAnimation.dart';
import 'package:bigkit_material_null_safety/Template_Material/model_data/Favorite_Model.dart';
import 'package:shimmer/shimmer.dart';
import 'package:showcaseview/showcaseview.dart';

class InformationScreen3 extends StatefulWidget {
  InformationScreen3({Key? key}) : super(key: key);

  @override
  _InformationScreen3State createState() => _InformationScreen3State();
}

class _InformationScreen3State extends State<InformationScreen3> {
  @override
  Widget build(BuildContext context) {
    return ShowCaseWidget(
      builder: Builder(builder: (context) => Category()),
    );
  }
}

class Category extends StatefulWidget {
  Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  GlobalKey _first = GlobalKey();
  GlobalKey _second = GlobalKey();
  GlobalKey _third = GlobalKey();
  GlobalKey _fourr = GlobalKey();
  GlobalKey _fivee = GlobalKey();

  final List<favoriteModel> items = [];

  ///
  /// Get image data dummy from firebase server
  ///
  var imageNetwork = NetworkImage(
      "https://firebasestorage.googleapis.com/v0/b/beauty-look.appspot.com/o/Artboard%203.png?alt=media&token=dc7f4bf5-8f80-4f38-bb63-87aed9d59b95");

  ///
  /// check the condition is right or wrong for image loaded or no
  ///
  bool loadImage = false;

  /// Declare price and value for chart
  int value = 1;
  int pay = 20;
  int delivery = 4;
  int total = 24;
  String _payButton = "Pay";
  Color _colorsButton1 = Color(0xFFF48522);
  Color _colorsButton2 = Colors.orangeAccent;

  @override
  void initState() {
    setState(() {
      items.add(
        favoriteModel(
            id: "fdvcswse",
            image:
                "https://images.pexels.com/photos/60616/fried-chicken-chicken-fried-crunchy-60616.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
            category: "Dinner",
            title: "Baked Teriyaki Chicken",
            time: "60 Minute",
            rating: 4.3,
            calorie: "155 Cal",
            directions: [
              "In a small saucepan over low heat, combine the cornstarch, cold water, sugar, soy sauce, vinegar, garlic, ginger and ground black pepper. Let simmer, stirring frequently, until sauce thickens and bubbles",
              "Place chicken pieces in a lightly greased 9x13 inch baking dish. Brush chicken with the sauce. Turn pieces over, and brush again.",
              "Bake in the preheated oven for 30 minutes. Turn pieces over, and bake for another 30 minutes, until no longer pink and juices run clear. Brush with sauce every 10 minutes during cooking."
            ],
            ingredient: [
              "1 tablespoon cornstarch",
              "1 tablespoon cold water",
              "½ cup white sugar",
              "½ cup soy sauce",
              "½ cup soy sauce",
              "¼ cup cider vinegar",
              "1 clove garlic, minced",
              "12 skinless chicken thighs"
            ],
            distance: "42 km"),
      );
      items.add(
        favoriteModel(
            id: "fdvcswse",
            image:
                "https://images.pexels.com/photos/60616/fried-chicken-chicken-fried-crunchy-60616.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
            category: "Dinner",
            title: "Baked Teriyaki Chicken",
            time: "60 Minute",
            rating: 4.3,
            calorie: "155 Cal",
            directions: [
              "In a small saucepan over low heat, combine the cornstarch, cold water, sugar, soy sauce, vinegar, garlic, ginger and ground black pepper. Let simmer, stirring frequently, until sauce thickens and bubbles",
              "Place chicken pieces in a lightly greased 9x13 inch baking dish. Brush chicken with the sauce. Turn pieces over, and brush again.",
              "Bake in the preheated oven for 30 minutes. Turn pieces over, and bake for another 30 minutes, until no longer pink and juices run clear. Brush with sauce every 10 minutes during cooking."
            ],
            ingredient: [
              "1 tablespoon cornstarch",
              "1 tablespoon cold water",
              "½ cup white sugar",
              "½ cup soy sauce",
              "½ cup soy sauce",
              "¼ cup cider vinegar",
              "1 clove garlic, minced",
              "12 skinless chicken thighs"
            ],
            distance: "42 km"),
      );
      items.add(
        favoriteModel(
            id: "fdvcswse",
            image:
                "https://images.pexels.com/photos/60616/fried-chicken-chicken-fried-crunchy-60616.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
            category: "Dinner",
            title: "Baked Teriyaki Chicken",
            time: "60 Minute",
            rating: 4.3,
            calorie: "155 Cal",
            directions: [
              "In a small saucepan over low heat, combine the cornstarch, cold water, sugar, soy sauce, vinegar, garlic, ginger and ground black pepper. Let simmer, stirring frequently, until sauce thickens and bubbles",
              "Place chicken pieces in a lightly greased 9x13 inch baking dish. Brush chicken with the sauce. Turn pieces over, and brush again.",
              "Bake in the preheated oven for 30 minutes. Turn pieces over, and bake for another 30 minutes, until no longer pink and juices run clear. Brush with sauce every 10 minutes during cooking."
            ],
            ingredient: [
              "1 tablespoon cornstarch",
              "1 tablespoon cold water",
              "½ cup white sugar",
              "½ cup soy sauce",
              "½ cup soy sauce",
              "¼ cup cider vinegar",
              "1 clove garlic, minced",
              "12 skinless chicken thighs"
            ],
            distance: "42 km"),
      );
    });
    Timer(Duration(seconds: 3), () {
      setState(() {
        loadImage = true;
      });
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) =>
        ShowCaseWidget.of(context)
            ?.startShowCase([_first, _second, _third, _fourr, _fivee]));

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 90.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 45.0, left: 15.0),
              child: Showcase(
                key: _first,
                description: "Title Screen",
                child: Text(
                  "Favorite Recipes",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontSize: 29.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.black),
                ),
              ),
            ),
          ),
          loadImage
              ? items.length > 0
                  ? Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.all(0.0),
                        itemCount: items.length,
                        itemBuilder: (context, position) {
                          ///
                          /// Widget for list view slide delete
                          ///
                          return Padding(
                            padding: const EdgeInsets.only(top: 13.0),
                            child: Slidable(
                              key: const ValueKey(0),
                              startActionPane: ActionPane(
                                // A motion is a widget used to control how the pane animates.
                                motion: const ScrollMotion(),

                                // A pane can dismiss the Slidable.
                                dismissible:
                                    DismissiblePane(onDismissed: () {}),
                                children: [
                                  new SlidableAction(
                                    label: "Item Archive",
                                    backgroundColor: Colors.blue,
                                    icon: Icons.archive,
                                    onPressed: (BuildContext context) {
                                      ///
                                      /// SnackBar show if cart Archive
                                      ///
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                        content: Text("Item Archive"),
                                        duration: Duration(seconds: 2),
                                        backgroundColor: Colors.blue,
                                      ));
                                    },
                                  ),
                                ],
                              ),
                              child: InkWell(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 0.0, top: 2.0, left: 15.0),
                                  child: Container(
                                    height: 100.0,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Hero(
                                          tag:
                                              'hero-tag-${'${items[position].id}'}',
                                          child: Material(
                                            color: Colors.transparent,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0)),
                                            child: Container(
                                              height: 100.0,
                                              width: 100.0,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        '${items[position].image}'),
                                                    fit: BoxFit.cover),
                                                boxShadow: [
                                                  BoxShadow(
                                                      blurRadius: 0.0,
                                                      color: Colors.black87)
                                                ],
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10.0)),
                                                gradient: LinearGradient(
                                                    colors: [
                                                      Colors.black,
                                                      Colors.white
                                                    ],
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Container(
                                                    width: 180.0,
                                                    child: Text(
                                                      '${items[position].title}',
                                                      style: TextStyle(
                                                          color: Colors.black87
                                                              .withOpacity(0.7),
                                                          fontFamily: "Sofia",
                                                          fontSize: 17.0,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      maxLines: 2,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 4.0,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 2.0,
                                              ),
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    2.2,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: <Widget>[
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
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
                                                          '${items[position].time}',
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .black45,
                                                              fontFamily:
                                                                  "Sofia",
                                                              fontSize: 14.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Icon(
                                                          Icons.whatshot,
                                                          size: 18.0,
                                                          color: Colors.black26,
                                                        ),
                                                        Text(
                                                          '${items[position].calorie}',
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .black45,
                                                              fontFamily:
                                                                  "Sofia",
                                                              fontSize: 14.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.star,
                                                    size: 20.0,
                                                    color: Colors.yellow,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 3.0),
                                                    child: Text(
                                                      items[position]
                                                          .rating
                                                          .toString(),
                                                      style: TextStyle(
                                                          color: Colors.black54,
                                                          fontWeight:
                                                              FontWeight.w700,
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
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        scrollDirection: Axis.vertical,
                      ),
                    )
                  : noItem()
              : _loadingDataList(context, 3),
        ],
      ),
    );
  }
}

///
/// Calling imageLoading animation for set a list layout
///
///
Widget _loadingDataList(BuildContext context, int length) {
  return Container(
    child: ListView.builder(
      shrinkWrap: true,
      primary: false,
      padding: EdgeInsets.only(top: 0.0),
      itemCount: length,
      itemBuilder: (ctx, i) {
        return loadingCard(ctx);
      },
    ),
  );
}

Widget loadingCard(BuildContext ctx) {
  return Padding(
    padding:
        const EdgeInsets.only(left: 15.0, right: 15.0, top: 5.0, bottom: 10.0),
    child: Shimmer.fromColors(
      baseColor: Colors.black38,
      highlightColor: Colors.white,
      child: Row(children: [
        Container(
          height: 100.0,
          width: 100.0,
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10.0),
                topLeft: Radius.circular(10.0)),
          ),
          alignment: Alignment.topRight,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: [
                      Container(
                        width: 170.0,
                        height: 18.0,
                        color: Colors.black12,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 5.0)),
                  Container(
                    height: 15.0,
                    width: 100.0,
                    color: Colors.black12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.9),
                    child: Container(
                      height: 12.0,
                      width: 140.0,
                      color: Colors.black12,
                    ),
                  )
                ],
              ),
            ),
          ],
        )
      ]),
    ),
  );
}

/// If no item cart this class showing
///
class noItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      width: 500.0,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding:
                    EdgeInsets.only(top: mediaQueryData.padding.top + 100.0)),
            Image.asset(
              "lib/Template1/Asset/ilustration/5.png",
              height: 270.0,
            ),
            Text(
              "Not Have Item Recipe",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 19.5,
                  color: Colors.black26.withOpacity(0.2),
                  fontFamily: "Sofia"),
            ),
          ],
        ),
      ),
    );
  }
}
