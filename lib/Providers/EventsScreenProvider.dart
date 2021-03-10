import 'package:flutter/material.dart';
import 'package:Blith1/Model/EventsModel.dart';

class EventsProvider with ChangeNotifier {
  final List<EventsModel> _eventsList = [
    EventsModel(
      eventName: 'Quizzitch',
      eventImage: 'assets/thumbnails/thumbnail_Quizzitch.png',
      eventRegister: 'https://forms.gle/5srux7VhecA44fmQ8',
      eventRuleBook:
          'https://drive.google.com/file/d/1bZltddWs3XomZLjHp5WBHRViuUCGGfoK/view?usp=drivesdk',
    ),
    EventsModel(
      eventName: 'Skirmish',
      eventImage: 'assets/thumbnails/thumbnail_Skirmish.png',
      eventRegister: 'https://forms.gle/RocjLMMXcoQ6jZwj7',
      eventRuleBook:
          'https://drive.google.com/file/d/1OFJ4a4-d98vXS2fuFR5IlONVA-WX5D32/view?usp=drivesdk',
    ),
    EventsModel(
      eventName: 'ExaggeratAD',
      eventImage: 'assets/thumbnails/thumbnail_ExaggeratAD.png',
      eventRegister: 'https://forms.gle/YUaN4NEzoaTyvsT8A',
      eventRuleBook:
          'https://drive.google.com/file/d/1T2GtWLEGtRdwJOrXwMjs6gPwu1m_sKDP/view',
    ),
    EventsModel(
      eventName: 'Mezkala',
      eventImage: 'assets/thumbnails/thumbnail_Mezkala.png',
      eventRegister:
          'https://docs.google.com/forms/d/e/1FAIpQLScps9WaR44CM-CT7ZLAjHxJx0CqtIoLYR9r3reiK_UxFMmWvA/viewform?usp=sf_link',
      eventRuleBook:
          'https://drive.google.com/file/d/1URoEm-x7YtOjVzlZPGql0OwFyQt7lVvm/view',
    ),
    EventsModel(
      eventName: 'Reverb',
      eventImage: 'assets/thumbnails/thumbnail_Reverb.png',
      eventRegister: 'https://forms.gle/bqTyuncYX91aXW5w6',
      eventRuleBook:
          'https://drive.google.com/file/d/1slKGGHbhisLF5TWRmF5faZTZFKSxDy1_/view?usp=drivesdk',
    ),
    EventsModel(
      eventName: 'Unkahi',
      eventImage: 'assets/thumbnails/thumbnail_Unkahi.png',
      eventRegister: 'https://forms.gle/ey87g3vue4hanRNw9',
      eventRuleBook:
          'https://drive.google.com/file/d/15wDl0I0TJWHb9NjuxD1pg7JhUgSAvhuV/view?usp=drivesdk',
    ),
    EventsModel(
      eventName: 'Lenz Law',
      eventImage: 'assets/thumbnails/thumbnail_LenzLaw.jpg',
      eventRegister: 'https://forms.gle/2mKWnFAbf9wtPwqaA',
      eventRuleBook:
          'https://drive.google.com/file/d/11Z8aQGbj0lhMizQnqCxSvnLzBf7ZH0UL/view?usp=drivesdk',
    ),
    EventsModel(
      eventName: 'BlithPD',
      eventImage: 'assets/thumbnails/thumbnail_BlithPD.jpg',
      eventRegister:
          'https://docs.google.com/forms/d/e/1FAIpQLSc3EUywf9Det2CJxoH07bDRNeVV8MaGetWGc2eo-wyMasBJEA/viewform',
      eventRuleBook: 'None',
    ),
  ];
  List<EventsModel> get eventsList {
    return [..._eventsList];
  }
}
