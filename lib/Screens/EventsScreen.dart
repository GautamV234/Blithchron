import 'package:flutter/material.dart';
import 'package:Blith1/Widgets/EventsItem.dart';
import 'package:provider/provider.dart';
import 'package:Blith1/Model/EventsModel.dart';
import 'package:Blith1/Providers/EventsScreenProvider.dart';

class EventsScreen extends StatelessWidget {
  // @override

  static const routeName = '\EventsScreen';

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

    return Scaffold(
        backgroundColor: Color(0xff1e2025),
        // appBar: AppBar(
        //   backgroundColor: Color(0xff1e2025),
        // ),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Color(0xff1e2025),
              expandedHeight: _screenHeight * 0.1796,
              floating: false,
              pinned: true,
              // snap: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  'Events',
                  style: TextStyle(
                    fontSize: _screenHeight * 0.0379,
                    foreground: Paint()..shader = linearGradient,
                  ),
                ),
                centerTitle: true,
                collapseMode: CollapseMode.pin,
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              (BuildContext context, int i) {
                return EventsItem(
                    eventName: eventsList[i].eventName,
                    eventRuleBook: eventsList[i].eventRuleBook,
                    eventRegister: eventsList[i].eventRegister,
                    eventImage: eventsList[i].eventImage);
              },
              childCount: eventsList.length,
            ))
          ],
        ));
  }
}
