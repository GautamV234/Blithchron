import 'package:flutter/material.dart';
import '../Widgets/OurTeamItem.dart';

class OurTeamScreen extends StatelessWidget {
  // @override
  static const routeName = '\OurTeamScreen';

  final List coreList = [
    {
      'name': 'Ashwani Rai',
      'department': 'EVENTS',
      'logo': 'assets/bitmoji/ashwani.png',
    },
    {
      'name': 'Eshika Pathak',
      'department': 'DESIGN',
      'logo': 'assets/bitmoji/eshika.png',
    },
    {
      'name': 'Rushik Desai',
      'department': 'MARKETING',
      'logo': 'assets/bitmoji/rushik.png',
    },
    {
      'name': 'Isha Bayad',
      'department': 'SPONS',
      'logo': 'assets/bitmoji/isha.png',
    },
  ];

  final List coordinatorsList = [
    {
      'name': 'Anushka Niti',
      'department': 'DESIGN',
      'logo': 'assets/bitmoji/anushka.png',
    },
    {
      'name': 'Rishitha Bikkumalla',
      'department': 'MARKETING',
      'logo': 'assets/bitmoji/rishitha.png',
    },
    {
      'name': 'Ishan Prayagi',
      'department': 'MARKETING',
      'logo': 'assets/bitmoji/ishan.png',
    },
    {
      'name': 'Pratham Panchal',
      'department': 'MARKETING',
      'logo': 'assets/bitmoji/pratham.png',
    },
    {
      'name': 'Juhi Parikh',
      'department': 'EVENTS',
      'logo': 'assets/bitmoji/juhi.png',
    },
    {
      'name': 'Abhiram Geddam',
      'department': 'EVENTS',
      'logo': 'assets/bitmoji/abhiram.png',
    },
    {
      'name': 'Adarsh Golait',
      'department': 'EVENTS',
      'logo': 'assets/bitmoji/adarsh.png',
    },
    {
      'name': 'Dhvani Shah',
      'department': 'SPONS',
      'logo': 'assets/bitmoji/dhvani.png',
    },
  ];

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

    final Shader linearGradient = LinearGradient(
      colors: <Color>[
        Color(0xff64d2ff),
        Color(0xff0a84ff),
        Color(0xff5e5ce6),
        Color(0xffbf5af2),
        Color(0xffff375f),
      ],
    ).createShader(
      Rect.fromLTWH(0.0, 0.0, 300.0, 70.0),
    );

    return Scaffold(
      backgroundColor: Color(0xff1e2025),
      appBar: AppBar(
        backgroundColor: Color(0xff1e2025),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: _screenHeight * 0.0289,
                ),
                Text(
                  'Our Team',
                  style: TextStyle(
                    fontSize: _screenHeight * 0.0479,
                    foreground: Paint()..shader = linearGradient,
                  ),
                ),
                SizedBox(
                  height: _screenHeight * 0.0479,
                ),
                SafeArea(
                  child: Container(
                    height: _screenHeight * 0.3593,
                    width: _screenWidth * 0.9,
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(_screenWidth * 0.0207, 0,
                              _screenWidth * 0.0207, 0),
                          child: Container(
                            width: _screenWidth * 0.10185,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'C\nO\nR\nE\nS',
                              style: TextStyle(
                                fontSize: _screenHeight * 0.0431,
                                fontFamily: 'ProximaNova',
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 1
                                  ..color = Color(0xff0a84ff), // To be changed
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          width: _screenWidth * 0.75028,
                          child: GridView.builder(
                            physics: new NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithMaxCrossAxisExtent(
                              // maxCrossAxisExtent: _screenWidth * 0.5092,
                              maxCrossAxisExtent: _screenWidth * 0.5729,
                              childAspectRatio: 1,
                              // crossAxisSpacing: _screenWidth * 0.0127,
                              // mainAxisSpacing: _screenHeight * 0.00958,
                              crossAxisSpacing: _screenWidth * 0.05092,
                              mainAxisSpacing: _screenHeight * 0.02395,
                            ),
                            itemCount: coreList.length,
                            itemBuilder: (ctx, i) => OurTeamItem(
                              name: coreList[i]['name'],
                              department: coreList[i]['department'],
                              logoUrl: coreList[i]['logo'],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: _screenHeight * 0.0559,
                ),
                SafeArea(
                  child: Container(
                    height: _screenHeight * 0.7446,
                    width: _screenWidth * 0.9,
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(_screenWidth * 0.0207, 0,
                              _screenWidth * 0.0207, 0),
                          child: Container(
                            width: _screenWidth * 0.10185,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'C\nO\nO\nR\nD\nI\nN\nA\nT\nO\nR\nS',
                              style: TextStyle(
                                fontSize: _screenHeight * 0.04311,
                                fontFamily: 'ProximaNova',
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 1
                                  ..color = Color(0xffff375f), // To be changed
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          width: _screenWidth * 0.75028,
                          child: GridView.builder(
                            physics: new NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithMaxCrossAxisExtent(
                              // maxCrossAxisExtent: _screenWidth * 0.5092,
                              maxCrossAxisExtent: _screenWidth * 0.57295,
                              childAspectRatio: 1,
                              // crossAxisSpacing: _screenWidth * 0.0127,
                              // mainAxisSpacing: _screenHeight * 0.00958,
                              crossAxisSpacing: _screenWidth * 0.05092,
                              mainAxisSpacing: _screenHeight * 0.02395,
                            ),
                            itemCount: coordinatorsList.length,
                            itemBuilder: (ctx, i) => OurTeamItem(
                              name: coordinatorsList[i]['name'],
                              department: coordinatorsList[i]['department'],
                              logoUrl: coordinatorsList[i]['logo'],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: _screenHeight * 0.0239,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
