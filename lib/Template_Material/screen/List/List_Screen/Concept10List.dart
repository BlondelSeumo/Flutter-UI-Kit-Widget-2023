import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/List/Model/ModelFashFood.dart';

class Concept10List extends StatefulWidget {
  Concept10List({Key? key}) : super(key: key);

  @override
  _Concept10ListState createState() => _Concept10ListState();
}

class _Concept10ListState extends State<Concept10List> {
  List<FashFood> foodFashList = FashFood.list;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Concept 10 List",
          style: TextStyle(fontFamily: "Sofia"),
        ),
      ),
      body: _buildPopularFashList(),
    );
  }

  Widget _buildPopularFashList() {
    return ListView.builder(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      itemCount: foodFashList.length,
      padding: EdgeInsets.only(
        left: 40,
        bottom: 16,
        right: 5,
        top: 20,
      ),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.only(left: 8, top: 10.0, bottom: 10.0),
            margin: EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: Color(0xFFE9E8FD),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
            child: Row(
              children: <Widget>[
                Image(
                  width: 80.0,
                  height: 80.0,
                  image: AssetImage("${foodFashList[index].imgPath}"),
                ),
                SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "${foodFashList[index].name}",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Sofia",
                          fontWeight: FontWeight.w700),
                    ),
                    Container(
                      width: 150.0,
                      child: Text(
                        "Spesial menu from foodie apps",
                        style: TextStyle(
                            fontFamily: "Sofia",
                            fontWeight: FontWeight.w400,
                            color: Colors.black38),
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "\$${foodFashList[index].price!.toInt()}",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0XFFcc3e12),
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
