// import 'package:Blith1/Providers/EventsProvider.dart';
import 'Providers/EventsProvider.dart';
import 'package:flutter/material.dart';
import 'Screens/HomeScreen.dart';
import 'package:provider/provider.dart';
import './Providers/SponsorsProvider.dart';
import './Screens/SponsorsScreen.dart';
import './Screens/ContactUsSceeen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: EventsDataProvider(),
        ),
        ChangeNotifierProvider.value(
          value: SponsorDataProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Raleway',
        ),
        home: HomeScreen(),
        routes: {
          SponsorsScreen.routeName: (ctx) => SponsorsScreen(),
          ContactUsScreen.routeName: (ctx) => ContactUsScreen(),
        },
      ),
    );
  }
}
