import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:async';
import 'HomeScreen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

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
        body: Stack(
          children: [
            Transform.translate(
              offset: Offset(_screenWidth * 0.01273, 0.0),
              child: Container(
                  height: _screenHeight * 0.9,
                  child: Center(
                    child: ClipRect(
                      child: Image.asset(
                        'assets/appLogo.png',
                      ),
                    ),
                  )),
            ),
            // Positioned(
            //   top: _screenHeight * 0.68,
            //   left: _screenWidth * 0.36,
            //   child: Container(
            //     child: SpinKitRipple(
            //       borderWidth: 10.0,
            //       size: 100.0,
            //       color: Colors.grey[700],
            //     ),
            //   ),
            // ),
            Positioned(
              top: _screenHeight * 0.68,
              left: _screenWidth * 0.43,
              child: Container(
                child: SpinKitRing(
                  // borderWidth: 40.0,
                  size: _screenHeight * 0.05988,
                  color: Colors.grey[700],
                ),
              ),
            ),
          ],
        ));
  }
}
