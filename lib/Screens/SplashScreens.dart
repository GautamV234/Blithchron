import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:async';
import 'HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () async {
      Navigator.pushNamed(context, HomeScreen.routeName);
    });
  }

  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    // print(data.size);

    double _screenHeight;
    double _screenWidth;

    if (data.orientation == Orientation.portrait) {
      _screenHeight = data.size.height;
      _screenWidth = data.size.width;
    } else {
      _screenHeight = data.size.width;
      _screenWidth = data.size.height;
    }

    return Scaffold(
      backgroundColor: Color(0xff1e2025),
      body: Container(
        height: _screenHeight * 0.9,
        child: Center(
          child: ClipRect(
            child: Image.asset(
              'assets/appLogo.png',
            ),
          ),
        ),
      ),
    );
  }
}
