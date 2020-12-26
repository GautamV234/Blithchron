import 'package:Blith1/Widgets/HomeScreenItem.dart';
import 'package:flutter/material.dart';
import '../Model/HomeScreenModel.dart';

class EventsDataProvider with ChangeNotifier {
  final List<HomeScreenModel> _eventsList = [
    HomeScreenModel(
      eventNum: 1,
      dateDay: '8',
      dateSuffix: 'th',
      dateMonth: 'DEC',
      eventName: 'Rahasya',
      eventDescription: 'Registeration is live!',
      color: [Color(0xff9a68f8), Color(0xff8a48fd), Color(0xff7320fe)],
      routeName: 'None',
    ),
    HomeScreenModel(
      eventNum: 2,
      dateDay: '7',
      dateSuffix: 'th',
      dateMonth: 'DEC',
      eventName: 'Zoetropy',
      eventDescription: 'Registeration is live!',
      color: [Color(0xffff6ed1), Color(0xffff21e0), Color(0xffff27e0)],
      routeName: 'None',
    ),
    HomeScreenModel(
      eventNum: 3,
      dateDay: '23',
      dateSuffix: 'rd',
      dateMonth: 'NOV',
      eventName: 'Aesthescape',
      eventDescription: 'Registeration is live!',
      color: [Color(0xff5ea8fe), Color(0xff3e93fe), Color(0xff347def)],
      routeName: 'None',
    ),
    HomeScreenModel(
      eventNum: 4,
      dateDay: '15',
      dateSuffix: 'th',
      dateMonth: 'DEC',
      eventName: 'Rahasya',
      eventDescription: 'Registeration is live!',
      color: [Color(0xff27d1e6), Color(0xff1dc9de), Color(0xff12b7cc)],
      routeName: 'None',
    ),
    HomeScreenModel(
      eventNum: 5,
      dateDay: '10',
      dateSuffix: 'th',
      dateMonth: 'NOV',
      eventName: 'Give Food',
      eventDescription: 'Registeration is live!',
      color: [Color(0xff3ee4ab), Color(0xff07e19d), Color(0xff03beab)],
      routeName: 'None',
    ),
  ];

  List<HomeScreenModel> get eventsList {
    return [..._eventsList];
  }
}
