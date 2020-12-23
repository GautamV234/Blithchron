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
        'name': 'CA Program',
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
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    /// Set some gradient to match the color of text with the poster ///
                    'Blithchron',
                    style: TextStyle(
                      // fontFamily: 'Raleway',
                      fontSize: 63, // TODO: Change size according to screensize
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
                    // fontFamily: 'Raleway',
                    fontSize: 23, // TODO: Change size according to screensize
                    fontWeight: FontWeight.w900,
                    foreground: Paint()..shader = linearGradientTitle,
                  ),
                ),
              ),
              SizedBox(
                height: 30,

                /// make this responsive for all screen sizes
              ),
              Padding(
                // TODO: 20.0 needs to be changed according to screensize
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                child: Center(
                  child: Container(
                    /// add all the shadow as there in the design
                    /// first block
                    // color: Colors.black12,
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
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'Upcoming Events',
                                  style: TextStyle(
                                      // fontFamily: 'Raleway',
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 400,
                          child: ListView.builder(
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
              Card(
                color: Colors.black,
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Discover',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w900),
                          ),
                          Container(
                            height: 100,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: bottomScrollingList.length,
                              itemBuilder: (ctx, i) {
                                return InkWell(
                                  onTap: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Card(
                                        color: bottomScrollingList[i]['color'],
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              bottomScrollingList[i]['name'],
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Icon(
                                              Icons.navigate_next_sharp,
                                            )
                                          ],
                                        )),
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    )
                  ],
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
