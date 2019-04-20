import 'package:btapp1/screens/forgotpassword/forgotpasswordpage.dart';
import 'package:btapp1/screens/login/loginpage.dart';
import 'package:btapp1/screens/signup/signuppage.dart';
import 'package:btapp1/screens/splash/splashone.dart';
import 'package:flutter/material.dart';

void main() => runApp(RoomiesApp());

class RoomiesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreenOne(),
      //home: LandingScreen(),
      routes: <String, WidgetBuilder> { 
        '/landingscreen': (BuildContext context) => new LoginPage(),
        '/signup': (BuildContext context) => new SignupPage(),
        '/forgotpassword': (BuildContext context) => new ForgotPasswordPage()
      },
    );
  }
}

