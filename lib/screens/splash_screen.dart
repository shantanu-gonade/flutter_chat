import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class SplashScreen extends StatelessWidget {
  final pages = [
    Container(
      color: Colors.pink,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/1.png',
            fit: BoxFit.cover,
          ),
          Padding(padding: const EdgeInsets.all(20.0)),
          Column(
            children: <Widget>[
              new Text(
                "Welcome",
                style: TextStyle(
                    fontSize: 30,
                    //fontFamily: "Billy",
                    fontWeight: FontWeight.w600),
              ),
              new Text(
                "To",
                style: TextStyle(
                    fontSize: 30,
                    //fontFamily: "Billy",
                    fontWeight: FontWeight.w600),
              ),
              new Text(
                "Chat",
                style: TextStyle(
                    fontSize: 30,
                    //fontFamily: "Billy",
                    fontWeight: FontWeight.w600),
              ),
            ],
          )
        ],
      ),
    ),
    Container(
      color: Colors.deepPurpleAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/1.png',
            fit: BoxFit.cover,
          ),
          Padding(padding: const EdgeInsets.all(20.0)),
          Column(
            children: <Widget>[
              new Text(
                "Start",
                style: TextStyle(
                    fontSize: 30,
                    //fontFamily: "Billy",
                    fontWeight: FontWeight.w600),
              ),
              new Text(
                "Connecting",
                style: TextStyle(
                    fontSize: 30,
                    //fontFamily: "Billy",
                    fontWeight: FontWeight.w600),
              ),
              
            ],
          )
        ],
      ),
    ),
    Container(
      color: Colors.greenAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/1.png',
            fit: BoxFit.cover,
          ),
          Padding(padding: const EdgeInsets.all(20.0)),
          Column(
            children: <Widget>[
              new Text(
                "Explore?",
                style: TextStyle(
                    fontSize: 30,
                    //fontFamily: "Billy",
                    fontWeight: FontWeight.w600),
              ),
              new Text(
                "Explore!",
                style: TextStyle(
                    fontSize: 30,
                    //fontFamily: "Billy",
                    fontWeight: FontWeight.w600),
              ),
              new Text(
                "Explore!",
                style: TextStyle(
                    fontSize: 30,
                    //fontFamily: "Billy",
                    fontWeight: FontWeight.w600),
              ),
            ],
          )
        ],
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        fullTransitionValue: 500,
        enableLoop: true,
      ),
    );
  }
}
