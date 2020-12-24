import 'package:Blith1/Widgets/HomeScreenItem.dart';
import 'package:flutter/material.dart';
import '../Model/HomeScreenModel.dart';
import 'package:provider/provider.dart';
import '../Providers/EventsProvider.dart';

class HomeScreen extends StatelessWidget {
  // change the colors to match the gradients in the text
  final Shader linearGradientTitle = LinearGradient(
    colors: <Color>[
      Colors.lightBlue,
      Colors.blue,
      Colors.purple,
      Colors.red,
    ],
  ).createShader(
    Rect.fromLTWH(0.0, 0.0, 350.0, 70.0),
  );

  @override
  Widget build(BuildContext context) {
    final eventsDataProvider = Provider.of<EventsDataProvider>(context);
    final List<HomeScreenModel> eventsList = eventsDataProvider.eventsList;

    final List bottomScrollingList = [
      {
        'name': 'Events',
        'color': Colors.purpleAccent,
        'route': 'None',
      },
      {
        'name': 'Sponsors',
        'color': Colors.pink,
        'route': 'None',
      },
      {
        'name': 'CA',
        'color': Colors.blue,
        'route': 'None',
      },
      {
        'name': 'Our Team',
        'color': Colors.lightBlue,
        'route': 'None',
      },
      {
        'name': 'Contact Us',
        'color': Colors.pink,
        'route': 'None',
      },
    ];

    //responsive media query
    final data = MediaQuery.of(context);
    print(data.size);

    double _screenHeight = data.size.height;
    double _screenWidth = data.size.width;
    /////////////////////////

    return Scaffold(
      backgroundColor: Color(0xff1e2025),

      /// all this has to be changed to make the look better ,
      appBar: AppBar(
        backgroundColor: Color(0xff1e2025),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              // An exammple showing the shadow effect thats there in the design

              //           Text(
              // 'Hello, world!',
              // style: TextStyle(
              //   shadows: <Shadow>[
              //     Shadow(
              //       offset: Offset(10.0, 10.0),
              //       blurRadius: 3.0,
              //       color: Color.fromARGB(255, 0, 0, 0),
              //     ),
              //     Shadow(
              //       offset: Offset(10.0, 10.0),
              //       blurRadius: 8.0,
              //       color: Color.fromARGB(125, 0, 0, 255),
              //     ),
              //   ],
              // ),
              // ),

              Padding(
                padding:
                    EdgeInsets.fromLTRB(_screenWidth * 0.05, 0.0, 0.0, 0.0),
                // padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    /// Set some gradient to match the color of text with the poster ///
                    'Blithchron',
                    style: TextStyle(
                      fontSize: _screenHeight * 0.075,
                      // fontSize: 63, // TODO: Change size according to screensize
                      fontWeight: FontWeight.w900,
                      foreground: Paint()..shader = linearGradientTitle,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Center(
                child: Text(
                  /// Set some gradient to match the color of text with the poster ///
                  'A CONFLUENCE OF ECSTACIES',
                  style: TextStyle(
                    fontSize: _screenHeight * 0.02754,
                    // fontSize: 23, // TODO: Change size according to screensize
                    fontWeight: FontWeight.w900,
                    foreground: Paint()..shader = linearGradientTitle,
                  ),
                ),
              ),
              SizedBox(
                height: _screenHeight * 0.0359,
                // height: 30,

                /// make this responsive for all screen sizes
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    _screenWidth * 0.05, 0.0, _screenWidth * 0.05, 0.0),
                // TODO: width needs to be changed according to screen size
                // padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                child: Center(
                  child: Container(
                    /// add all the shadow as there in the design
                    /// first block
                    decoration: BoxDecoration(
                      // border: Border.all(color: Colors.blue, width: 2.0),
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
                          // padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(_screenWidth * 0.03),
                                // padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'Upcoming Events',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: _screenHeight * 0.0215,
                                      // fontSize: 18,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          /// Height will be fixed, but a different value than 440
                          /// according to height and width of list item
                          // height: 440,
                          height: _screenHeight * 0.527,
                          child: ListView.builder(
                            /// @Gautam this doesn't need to be a scrolling list,
                            /// can we make it a static one? It's affecting the
                            /// scroll of the overall home page
                            itemCount: eventsList.length,
                            itemBuilder: (ctx, i) {
                              HomeScreenModel currentEvent = eventsList[i];
                              return HomeScreenItem(
                                dateDay: currentEvent.dateDay,
                                dateMonth: currentEvent.dateMonth,
                                eventName: currentEvent.eventName,
                                eventDescription: currentEvent.eventDescription,
                                routeName: currentEvent.routeName,
                                colorOfCard: currentEvent.color,
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
                // height: 20,
                height: _screenHeight * 0.02395,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    _screenWidth * 0.05, 0.0, _screenWidth * 0.05, 0.0),
                // padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
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
                                        color: Colors.white,
                                        fontSize: _screenHeight * 0.0215,
                                        // fontSize: 18,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.all(_screenWidth * 0.0203),
                                  // padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: _screenHeight * 0.1198,
                                    // height: 100,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: bottomScrollingList.length,
                                      itemBuilder: (ctx, i) {
                                        return InkWell(
                                          onTap: () {},
                                          child: Padding(
                                            padding: EdgeInsets.all(
                                                _screenWidth * 0.005),
                                            // padding: const EdgeInsets.all(2.0),
                                            child: Container(
                                              width: _screenWidth * 0.2546,
                                              // width: 100,
                                              decoration: BoxDecoration(
                                                // color: Color(0x77000000),
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(10.0),
                                                ),
                                                boxShadow: <BoxShadow>[
                                                  new BoxShadow(
                                                    color: Color(0x77000000),
                                                    blurRadius: 5.0,
                                                    offset:
                                                        new Offset(5.0, 5.0),
                                                  ),
                                                ],
                                              ),
                                              child: Card(
                                                  color: bottomScrollingList[i]
                                                      ['color'],
                                                  child: Center(
                                                    child: Column(
                                                      children: [
                                                        SizedBox(
                                                          height:
                                                              _screenHeight *
                                                                  0.01198,
                                                          // height: 10,
                                                        ),
                                                        Text(
                                                          bottomScrollingList[i]
                                                              ['name'],
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
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
                                                        )
                                                      ],
                                                    ),
                                                  )),
                                            ),
                                          ),
                                        );
                                      },
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
              )
            ],
          ),
        ),

        /// Addding Code For Connect Us Tomorrow!
      ),
    );
  }
}
