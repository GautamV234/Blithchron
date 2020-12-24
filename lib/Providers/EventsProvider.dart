import 'package:Blith1/Widgets/HomeScreenItem.dart';
import 'package:flutter/material.dart';
import '../Model/HomeScreenModel.dart';

class EventsDataProvider with ChangeNotifier {
  final List<HomeScreenModel> _eventsList = [
    HomeScreenModel(
      eventNum: 1,
      dateDay: '8th',
      dateMonth: 'DEC',
      eventName: 'Rahasya',
      eventDescription: 'Registeration is live!',
      color: Colors.deepPurpleAccent,
      routeName: 'None',
    ),
    HomeScreenModel(
      eventNum: 2,
      dateDay: '7th',
      dateMonth: 'DEC',
      eventName: 'Zoetropy',
      eventDescription: 'Registeration is live!',
      color: Colors.pinkAccent,
      routeName: 'None',
    ),
    HomeScreenModel(
      eventNum: 3,
      dateDay: '12th',
      dateMonth: 'NOV',
      eventName: 'Aesthescape',
      eventDescription: 'Registeration is live!',
      color: Colors.lightBlueAccent,
      routeName: 'None',
    ),
    HomeScreenModel(
      eventNum: 4,
      dateDay: '7th',
      dateMonth: 'NOV',
      eventName: 'Give Food',
      eventDescription: 'Registeration is live!',
      color: Colors.lightGreenAccent,
      routeName: 'None',
    ),
  ];

  List<HomeScreenModel> get eventsList {
    return [..._eventsList];
  }
}
