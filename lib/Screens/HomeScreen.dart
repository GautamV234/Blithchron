import 'package:Blith1/Widgets/HomeScreenItem.dart';
import 'package:flutter/material.dart';
import '../Model/HomeScreenModel.dart';
import 'package:provider/provider.dart';
import '../Providers/EventsProvider.dart';

class HomeScreen extends StatelessWidget {
  // change the colors to match the gradients in the text
  final Shader linearGradient = LinearGradient(
    colors: <Color>[
      Color(0xffDA44bb),
      Color(0xff8921aa),
    ],
  ).createShader(
    Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
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
      backgroundColor: Colors.black87,

      /// all this has to be changed to make the look better ,
      appBar: AppBar(
        backgroundColor: Colors.black,
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

              Text(
                /// Set some gradient to match the color of text with the poster ///
                'Blithchron',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w900,
                  foreground: Paint()..shader = linearGradient,
                ),
              ),
              Text(
                /// Set some gradient to match the color of text with the poster ///
                'A CONFLUENCE OF ECSTACIES',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w900,
                  foreground: Paint()..shader = linearGradient,
                ),
              ),
              SizedBox(
                height: 30,

                /// make this responsive for all screen sizes
              ),
              Container(
                /// add all the shadow as there in the design
                /// first block
                // color: Colors.black12,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 2.0),
                  color: Colors.black,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                  boxShadow: <BoxShadow>[
                    new BoxShadow(
                      color: Colors.black,
                      blurRadius: 3.0,
                      offset: new Offset(10.0, 3.0),
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
                          Text(
                            'Upcoming Events',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w900),
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
