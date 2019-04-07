import 'package:btapp1/screens/splash/splash.dart';
import 'package:flutter/material.dart';

void main() => runApp(RoomiesApp());

class RoomiesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

