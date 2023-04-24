import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class VideoGridScreen extends StatefulWidget {
  VideoGridScreen({Key? key}) : super(key: key);

  @override
  _VideoGridScreenState createState() => _VideoGridScreenState();
}

class _VideoGridScreenState extends State<VideoGridScreen> {
  @override
  Future<List?> getData() async {
    final irl = "https://flutterlistrecipe.herokuapp.com/";
    final url = Uri.parse(irl);
    final respone = await http.get(url);
    return json.decode(respone.body);
  }

  Widget build(BuildContext context) {
    double mediaQueryData = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Video Grid",
          style: TextStyle(fontFamily: "Sofia", fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Padding(
          padding: const EdgeInsets.only(top: 0.0),
          child: Container(
            color: Colors.white,
            child: FutureBuilder<List?>(
                future: getData(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) print(snapshot.error);
                  {
                    return snapshot.hasData
                        ? Center(child: CircularProgressIndicator())
                        : gridVideo(
                            list: snapshot.data,
                            mediaQueryData: mediaQueryData,
                          );
                  }
                }),
          )),
    );
  }
}

class gridVideo extends StatelessWidget {
  List? list;
  double? mediaQueryData;
  gridVideo({this.list, this.mediaQueryData});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      padding: EdgeInsets.only(top: 0.0, bottom: 0.0, left: 5.0),
      childAspectRatio: mediaQueryData! / 1250,
      crossAxisSpacing: 0.0,
      mainAxisSpacing: 0.0,
      primary: false,
      children: List.generate(
        /// Get data in flashSaleItem.dart (ListItem folder)
        list == null ? 0 : list!.length,
        (i) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.black12.withOpacity(0.1),
                      spreadRadius: 0.2,
                      blurRadius: 0.5)
                ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Stack(
                    //   children: <Widget>[

                    //   ],
                    // ),
                    Container(
                      height: 140.0,
                      color: Colors.yellow,
                      child: Container(
                        height: 140.0,
                        width: MediaQuery.of(context).size.width / 2.1,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          image: DecorationImage(
                              image: NetworkImage(list![i]['snippet']
                                  ['thumbnails']["high"]["url"]),
                              fit: BoxFit.cover),
                        ),
                        child: Container(
                          height: 140.0,
                          color: Colors.black12.withOpacity(0.3),
                          child: Center(
                            child: Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                              size: 50.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 8.0, right: 3.0, top: 15.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2.7,
                        child: Text(
                          list![i]['snippet']['title'],
                          style: TextStyle(
                              fontFamily: "Sofia",
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 17.5),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, top: 5.0, bottom: 15.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2.7,
                        child: Text(
                          list![i]['snippet']['description'],
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w300,
                              fontFamily: "Sofia",
                              color: Colors.black38),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
