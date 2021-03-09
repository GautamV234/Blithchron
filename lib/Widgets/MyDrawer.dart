import '../Screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import '../Screens/CampusAdvisorScreen.dart';
import '../Screens/ContactUsScreen.dart';
import '../Screens/EventsScreen.dart';
import '../Screens/SponsorsScreen.dart';
import '../Screens/OurTeamScreen.dart';

class MyDrawer extends StatelessWidget {
  final Shader linearGradientTitle = LinearGradient(
    colors: <Color>[
      Color(0xff64d2ff),
      Color(0xff0a84ff),
      Color(0xff5e5ce6),
      Color(0xffbf5af2),
      Color(0xffff375f),
    ],
  ).createShader(
    Rect.fromLTWH(0.0, 0.0, 350.0, 70.0),
  );
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
      'name': 'CA',
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
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            "Blithchron'21",
            style: TextStyle(
              foreground: Paint()..shader = linearGradientTitle,
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                  itemCount: drawerList.length,
                  itemBuilder: (ctx, i) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, drawerList[i]['route']);
                        },
                        child: Text(
                          drawerList[i]['name'],
                        ),
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
