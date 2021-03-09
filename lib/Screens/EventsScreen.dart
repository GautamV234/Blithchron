import 'package:flutter/material.dart';
import 'package:Blith1/Widgets/EventsItem.dart';
import 'package:provider/provider.dart';
import 'package:Blith1/Model/EventsModel.dart';
import 'package:Blith1/Providers/EventsScreenProvider.dart';

class EventsScreen extends StatelessWidget {
  // @override

  static const routeName = '\EventsScreen';

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

  Widget build(BuildContext context) {
    final eventsProvider = Provider.of<EventsProvider>(context);
    final List<EventsModel> eventsList = eventsProvider.eventsList;

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

    return Scaffold(
      backgroundColor: Color(0xff1e2025),
      appBar: AppBar(
        backgroundColor: Color(0xff1e2025),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: _screenHeight * 0.01197,
              // height: 10,
            ),
            Padding(
              padding:
                  EdgeInsets.fromLTRB(0.0, _screenHeight * 0.01197, 0.0, 0.0),
              child: Text('Events',
                  style: TextStyle(
                    fontSize: _screenHeight * 0.05988,
                    foreground: Paint()..shader = linearGradient,
                  )),
            ),
            SizedBox(
              height: _screenHeight * 0.02395,
            ),
            Expanded(
              child: Container(
                height: _screenHeight * 0.75458,
                child: ListView.builder(
                  // physics: NeverScrollableScrollPhysics(),
                  itemCount: eventsList.length,
                  itemBuilder: (ctx, i) {
                    EventsModel currentEvent = eventsList[i];
                    return EventsItem(
                        eventName: currentEvent.eventName,
                        eventRuleBook: currentEvent.eventRuleBook,
                        eventRegister: currentEvent.eventRegister,
                        eventImage: currentEvent.eventImage);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
