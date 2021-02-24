import 'package:flutter/material.dart';
import 'package:Blith1/Model/EventsModel.dart';

class EventsProvider with ChangeNotifier {
  final List<EventsModel> _eventsList = [
    EventsModel(
      eventName: 'Quizzitch',
      eventImage: 'None',
      eventRegister: 'None',
      eventRuleBook: 'None',
    ),
    EventsModel(
      eventName: 'Skirmish',
      eventImage: 'None',
      eventRegister: 'None',
      eventRuleBook: 'None',
    ),
    EventsModel(
      eventName: 'BlithPD',
      eventImage: 'None',
      eventRegister: 'None',
      eventRuleBook: 'None',
    ),
    EventsModel(
      eventName: 'ExaggeratAD',
      eventImage: 'None',
      eventRegister: 'None',
      eventRuleBook: 'None',
    ),
    EventsModel(
      eventName: 'Mezkala',
      eventImage: 'None',
      eventRegister: 'None',
      eventRuleBook: 'None',
    ),
    EventsModel(
      eventName: 'Reverb',
      eventImage: 'None',
      eventRegister: 'None',
      eventRuleBook: 'None',
    ),
    EventsModel(
      eventName: 'Unkahi',
      eventImage: 'None',
      eventRegister: 'None',
      eventRuleBook: 'None',
    ),
    EventsModel(
      eventName: 'LenzLaw',
      eventImage: 'None',
      eventRegister: 'None',
      eventRuleBook: 'None',
    ),
  ];
  List<EventsModel> get eventsList {
    return [..._eventsList];
  }
}
