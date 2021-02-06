import 'package:flutter/material.dart';
import '../Widgets/OurTeamItem.dart';

class OurTeamScreen extends StatelessWidget {
  @override
  static const routeName = '\OurTeamScreen';
  List coreList = [
    /// ADD LOGO KA JPG DETAILS UNDER LOGO FROM HRUSHTI
    {
      'name': 'Ashwani Rai',
      'department': 'Events',
      'logo': '',
    },
    {
      'name': 'Eshika Pathak',
      'department': 'Design',
      'logo': '',
    },
    {
      'name': 'Rushik Desai',
      'department': 'Marketing',
      'logo': '',
    },
    {
      'name': 'Isha Bayad',
      'department': 'Spons',
      'logo': '',
    },
  ];

  //// add the details of the coordinators in the exact Mujhe Pata nai hai kon hai sorry
  List coordinatorsList = [];

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
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Our Team',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            SafeArea(
              child: Container(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: _screenWidth * 0.5092,
                    // maxCrossAxisExtent: 200,
                    childAspectRatio: 1.2,
                    crossAxisSpacing: _screenWidth * 0.0127,
                    mainAxisSpacing: _screenHeight * 0.00958,
                    // crossAxisSpacing: 5,
                    // mainAxisSpacing: 8.0,
                  ),
                  itemCount: coreList.length,
                  itemBuilder: (ctx, i) => OurTeamItem(
                    name: coreList[i]['name'],
                    department: coreList[i]['department'],
                    logoUrl: coreList[i]['logo'],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SafeArea(
              child: Container(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: _screenWidth * 0.5092,
                    // maxCrossAxisExtent: 200,
                    childAspectRatio: 1.2,
                    crossAxisSpacing: _screenWidth * 0.0127,
                    mainAxisSpacing: _screenHeight * 0.00958,
                    // crossAxisSpacing: 5,
                    // mainAxisSpacing: 8.0,
                  ),
                  itemCount: coordinatorsList.length,
                  itemBuilder: (ctx, i) => OurTeamItem(
                    name: coreList[i]['name'],
                    department: coreList[i]['department'],
                    logoUrl: coreList[i]['logo'],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
