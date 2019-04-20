import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class SplashScreenOne extends StatefulWidget {
  @override
  _SplashScreenOneState createState() => _SplashScreenOneState();
}

class _SplashScreenOneState extends State<SplashScreenOne> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () => Navigator.of(context).pushNamed('/landingscreen'));
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/images/splash_bg.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
          // decoration: BoxDecoration(
          //   gradient: LinearGradient(
          //     begin: Alignment.topLeft,
          //     end: Alignment.bottomLeft,
          //     //stops: [0.1, 0.5],
          //     //colors: [Color(0xff6094e8), Color(0xffde5cbc)]
          //     colors: [Color(0xff29dfb7), Color(0xff3ec7fd)]
          //   )
          // ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 30.0,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.home,
                size: 25.0,
                color: Colors.deepOrange,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            
            Text(
              'MyRoomies',
              style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
                fontSize: 24.0
              ),
            ),

            const SizedBox(height: 48.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SpinKitChasingDots(color: Colors.white),
                // SpinKitCubeGrid(size: 51.0, color: Colors.white),
                // SpinKitFoldingCube(color: Colors.white),
              ],
            ),

          ],

        )

      ],
    );


  }
}