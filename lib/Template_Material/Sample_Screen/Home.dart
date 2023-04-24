import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var selectedFood = 'BURGER';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(0.0),
          child: AppBar(
            elevation: 0.0,
          )),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 400.0,
              ),
              ShaderMask(
                  shaderCallback: (rect) {
                    return LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.white, Colors.transparent])
                        .createShader(
                            Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.asset(
                    'assets/images/imageHeader.jpg',
                    height: 330.0,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  )),
              RotatedBox(
                quarterTurns: 3,
                child: Text('Foodie',
                    style: TextStyle(
                        fontSize: 75,
                        fontWeight: FontWeight.bold,
                        color: Colors.white.withOpacity(0.3),
                        letterSpacing: 10.0)),
              ),
              Positioned(
                  top: 200.0,
                  left: 40.0,
                  child: Column(
                    children: <Widget>[
                      Text('Recipes',
                          style: TextStyle(
                              fontFamily: 'Sofia',
                              fontSize: 32.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.black54))
                    ],
                  )),
              Positioned(
                  top: 235.0,
                  left: 40.0,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text('Faster',
                              style: TextStyle(
                                  fontFamily: 'Sofia',
                                  fontSize: 50.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF5FBD84))),
                          Text(',',
                              style: TextStyle(
                                  fontFamily: 'Sofia',
                                  fontSize: 50.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          SizedBox(width: 10.0),
                        ],
                      )
                    ],
                  )),
              Positioned(
                  top: 320.0,
                  left: 25.0,
                  right: 25.0,
                  child: Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 5.0,
                                color: Colors.black12.withOpacity(0.03),
                                spreadRadius: 10.0)
                          ],
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(15.0),
                              bottomLeft: Radius.circular(15.0),
                              topLeft: Radius.circular(15.0),
                              topRight: Radius.circular(15.0))),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Lets explore some food here...',
                            hintStyle: TextStyle(
                                color: Colors.black38,
                                fontFamily: 'Sofia',
                                fontSize: 12.0),
                            contentPadding: EdgeInsets.only(top: 15.0),
                            prefixIcon: Icon(Icons.search, color: Colors.grey)),
                      ))),
              Padding(
                padding: EdgeInsets.only(left: 10.0, top: 15.0),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white),
                    child: Center(
                      child: Icon(Icons.arrow_back_ios),
                    ),
                  ),
                ),
              ),
            ],
          ),
          //Get out of the stack for the options
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            _buildMenuItem('BURGER', Icons.fastfood),
            _buildMenuItem('TEA', Icons.local_drink),
            _buildMenuItem('BEER', Icons.local_drink),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildMenuItem('CAKE', Icons.cake),
              _buildMenuItem('COFFEE', Icons.cloud),
              _buildMenuItem('MEAT', Icons.restaurant),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildMenuItem('ICE', Icons.insert_chart),
              _buildMenuItem('FISH', Icons.filter_tilt_shift),
              _buildMenuItem('DONUTS', Icons.donut_small),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildMenuItem(String foodName, iconData) {
    return InkWell(
        splashColor: Colors.transparent,
        onTap: () {
          selectMenuOption(foodName);
        },
        child: AnimatedContainer(
            curve: Curves.easeIn,
            duration: Duration(milliseconds: 300),
            height: selectedFood == foodName ? 100.0 : 75.0,
            width: selectedFood == foodName ? 100.0 : 75.0,
            color: selectedFood == foodName
                ? Color(0xFF5FBD84)
                : Colors.transparent,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(
                iconData,
                color: selectedFood == foodName ? Colors.white : Colors.grey,
                size: 25.0,
              ),
              SizedBox(height: 12.0),
              Text(foodName,
                  style: TextStyle(
                      fontFamily: 'Sofia',
                      color:
                          selectedFood == foodName ? Colors.white : Colors.grey,
                      fontSize: 10.0))
            ])));
  }

  selectMenuOption(String foodName) {
    setState(() {
      selectedFood = foodName;
    });
  }
}
