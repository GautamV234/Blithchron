import '../Screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import '../Screens/CampusAdvisorScreen.dart';
import '../Screens/ContactUsScreen.dart';
import '../Screens/EventsScreen.dart';
import '../Screens/SponsorsScreen.dart';
import '../Screens/OurTeamScreen.dart';
import '../Screens/DevPage.dart';

class MyDrawer extends StatelessWidget {
  final List drawerList = [
    {
      'name': 'Home',
      'color': [Color(0xff9a68f8), Color(0xff8a48fd), Color(0xff7320fe)],
      'route': HomeScreen.routeName,
    },
    {
      'name': 'Events',
      'color': [Color(0xff9a68f8), Color(0xff8a48fd), Color(0xff7320fe)],
      'route': EventsScreen.routeName,
    },
    {
      'name': 'Sponsors',
      'color': [Color(0xffff6ed1), Color(0xffff21e0), Color(0xffff27e0)],
      'route': SponsorsScreen.routeName,
    },
    {
      'name': 'Campus Ambassador',
      'color': [Color(0xff5ea8fe), Color(0xff3e93fe), Color(0xff347def)],
      'route': CampusAdvisorScreen.routeName,
    },
    {
      'name': 'Our Team',
      'color': [Color(0xff27d1e6), Color(0xff1dc9de), Color(0xff12b7cc)],
      'route': OurTeamScreen.routeName,
    },
    {
      'name': 'Contact Us',
      'color': [Color(0xff3ee4ab), Color(0xff07e19d), Color(0xff03beab)],
      'route': ContactUsScreen.routeName,
    },
    {
      'name': 'Developers',
      'color': [Color(0xff9a68f8), Color(0xff8a48fd), Color(0xff7320fe)],
      'route': DevPage.routeName,
    },
  ];

  @override
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
      Rect.fromLTWH(0.0, 0.0, _screenWidth * 0.65, 70.0),
    );

    return Drawer(
      child: Container(
        color: Color(0xff1e2025),
        child: Column(
          children: [
            SizedBox(
              height: _screenHeight * 0.07,
              // height: _screenHeight * 0.035,
            ),

            /// Not decided whether to keep the Blithchron '21 heading or not,
            /// will confirm in the morning
            Text(
              "Blithchron'21",
              style: TextStyle(
                foreground: Paint()..shader = linearGradient,
                fontSize: _screenHeight * 0.03,
              ),
            ),
            Expanded(
              child: SizedBox(
                height: _screenHeight * 0.5,
                child: ListView.builder(
                    itemCount: drawerList.length,
                    itemBuilder: (ctx, i) {
                      return Container(
                        padding: EdgeInsets.all(10),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, drawerList[i]['route']);
                          },
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(
                                _screenWidth * 0.04, 0, 0, 0),
                            child: Text(
                              drawerList[i]['name'],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: _screenHeight * 0.025,
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
