import 'package:Blith1/Widgets/HomeScreenItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Model/HomeScreenModel.dart';
import 'package:provider/provider.dart';
import '../Providers/EventsProvider.dart';
import '../Screens/SponsorsScreen.dart';
import '../Screens/ContactUsScreen.dart';
import 'OurTeamScreen.dart';
import 'package:Blith1/Screens/EventsScreen.dart';
import '../Screens/CampusAdvisorScreen.dart';
import '../Widgets/MyDrawer.dart';
import 'package:Blith1/Screens/DevPage.dart';
import 'package:vs_scrollbar/vs_scrollbar.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '\homescreen';
  // change the colors to match the gradients in the text

  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    final eventsDataProvider = Provider.of<EventsDataProvider>(context);
    final List<HomeScreenModel> eventsList = eventsDataProvider.eventsList;
    final Shadow dropShadow2 = new Shadow(
      blurRadius: 5,
      color: Color(0x55000000),
      offset: Offset(4, 4),
    );

    final List bottomScrollingList = [
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
      {
        'name': 'Developers',
        'color': [Color(0xff5ea8fe), Color(0xff3e93fe), Color(0xff347def)],
        'route': DevPage.routeName,
      }
    ];

    //responsive media query
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

    final Shader linearGradientTitle = LinearGradient(
      colors: <Color>[
        Color(0xff64d2ff),
        Color(0xff0a84ff),
        Color(0xff5e5ce6),
        Color(0xffbf5af2),
        Color(0xffff375f),
      ],
    ).createShader(
      Rect.fromLTWH(0.0, 0.0, _screenWidth * 0.75, 70.0),
    );

    return Scaffold(
      drawer: MyDrawer(),
      backgroundColor: Color(0xff1e2025),
      appBar: AppBar(
        backgroundColor: Color(0xff1e2025),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                    _screenWidth * 0.05, _screenHeight * 0.05, 0.0, 0.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Blithchron',
                    style: TextStyle(
                      fontSize: _screenHeight * 0.075,
                      fontWeight: FontWeight.w900,
                      foreground: Paint()..shader = linearGradientTitle,
                      shadows: [
                        dropShadow2,
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.fromLTRB(_screenWidth * 0.054, 0.0, 0.0, 0.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'A CONFLUENCE OF ECSTACIES',
                    style: TextStyle(
                      fontSize: _screenHeight * 0.02754,
                      fontWeight: FontWeight.w900,
                      foreground: Paint()..shader = linearGradientTitle,
                      shadows: [
                        dropShadow2,
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(
                height: _screenHeight * 0.05,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    _screenWidth * 0.032, 0.0, _screenWidth * 0.032, 0.0),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xff26292e),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      boxShadow: <BoxShadow>[
                        new BoxShadow(
                          color: Colors.black,
                          blurRadius: 5.0,
                          offset: new Offset(7.0, 7.0),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(_screenHeight * 0.0095),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(_screenWidth * 0.03),
                                child: Text(
                                  'Upcoming Events',
                                  style: TextStyle(
                                      shadows: [
                                        dropShadow2,
                                      ],
                                      color: Colors.white,
                                      fontSize: _screenHeight * 0.0255,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              _screenHeight * 0.0095, 0, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(
                                    _screenWidth * 0.03, 0, 0, 0),
                                child: Text(
                                  'Register by',
                                  style: TextStyle(
                                      shadows: [
                                        dropShadow2,
                                      ],
                                      color: Colors.white,
                                      fontSize: _screenHeight * 0.0155,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: _screenHeight * 0.98,
                          child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: eventsList.length,
                            itemBuilder: (ctx, i) {
                              HomeScreenModel currentEvent = eventsList[i];
                              return InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, EventsScreen.routeName);
                                },
                                child: HomeScreenItem(
                                  dateDay: currentEvent.dateDay,
                                  dateSuffix: currentEvent.dateSuffix,
                                  dateMonth: currentEvent.dateMonth,
                                  eventName: currentEvent.eventName,
                                  eventDescription:
                                      currentEvent.eventDescription,
                                  routeName: currentEvent.routeName,
                                  colorOfCard: currentEvent.color,
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: _screenHeight * 0.02395,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    _screenWidth * 0.032, 0.0, _screenWidth * 0.032, 0.0),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xff26292e),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      boxShadow: <BoxShadow>[
                        new BoxShadow(
                          color: Colors.black,
                          blurRadius: 5.0,
                          offset: new Offset(7.0, 7.0),
                        ),
                      ],
                    ),
                    // color: Colors.black,
                    child: Padding(
                      padding: EdgeInsets.all(_screenWidth * 0.0203),
                      // padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(_screenWidth * 0.03),
                                  // padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    'Discover',
                                    style: TextStyle(
                                        shadows: [
                                          dropShadow2,
                                        ],
                                        color: Colors.white,
                                        fontSize: _screenHeight * 0.0255,
                                        // fontSize: 18,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.all(_screenWidth * 0.0203),
                                  // padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: _screenHeight * 0.1398,
                                    // height: 100,
                                    child: VsScrollbar(
                                      // controller: _scrollController,
                                      // isAlwaysShown: true,
                                      // radius: Radius.circular(30),
                                      // thickness: 6.5,

                                      controller: _scrollController,
                                      scrollDirection: Axis.horizontal,
                                      allowDrag: true,
                                      color: Colors.grey[800],
                                      radius: 20,
                                      thickness: 6,
                                      isAlwaysShown: true,
                                      // scrollbarFadeDuration:
                                      //     Duration(milliseconds: 0),
                                      // scrollbarTimeToFade:
                                      //     Duration(milliseconds: 0),
                                      child: ListView.builder(
                                        controller: _scrollController,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: bottomScrollingList.length,
                                        itemBuilder: (ctx, i) {
                                          return Column(
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  if (bottomScrollingList[i]
                                                          ['route'] !=
                                                      'None') {
                                                    Navigator.pushNamed(
                                                      context,
                                                      bottomScrollingList[i]
                                                          ['route'],
                                                    );
                                                  }
                                                },
                                                child: Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      _screenWidth * 0.005,
                                                      _screenWidth * 0.005,
                                                      _screenWidth * 0.025,
                                                      _screenWidth * 0.005),
                                                  // padding: const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    width:
                                                        _screenWidth * 0.2546,
                                                    // width: 100,
                                                    decoration: BoxDecoration(
                                                      // color: Color(0x77000000),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                        Radius.circular(10.0),
                                                      ),
                                                      boxShadow: <BoxShadow>[
                                                        new BoxShadow(
                                                          color:
                                                              Color(0x55000000),
                                                          blurRadius: 5,
                                                          offset:
                                                              new Offset(4, 4),
                                                        ),
                                                      ],
                                                    ),
                                                    child: Container(
                                                      height: _screenHeight *
                                                          0.10659,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                            Radius.circular(
                                                                10.0),
                                                          ),
                                                          gradient:
                                                              LinearGradient(
                                                            colors:
                                                                bottomScrollingList[
                                                                    i]['color'],
                                                          )),
                                                      child: Center(
                                                        child: Column(
                                                          children: [
                                                            SizedBox(
                                                              height:
                                                                  _screenHeight *
                                                                      0.02198,
                                                              // height: 10,
                                                            ),
                                                            Text(
                                                              bottomScrollingList[
                                                                  i]['name'],
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height:
                                                                  _screenHeight *
                                                                      0.01198,
                                                              // height: 10,
                                                            ),
                                                            Icon(
                                                              Icons
                                                                  .arrow_forward_sharp,
                                                              color:
                                                                  Colors.white,
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: _screenHeight * 0.0359,
                // height: 30,
              ),
            ],
          ),
        ),

        /// Addding Code For Connect Us Tomorrow!
      ),
    );
  }
}