// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeScreenModel {
  final int eventNum;
  final String dateDay;
  final String dateSuffix;
  final String dateMonth;
  final String eventName;
  final String eventDescription;
  final String routeName;
  final List<Color> color;

  HomeScreenModel({
    @required this.eventNum,
    @required this.dateDay,
    @required this.dateSuffix,
    @required this.dateMonth,
    @required this.eventName,
    @required this.color,
    @required this.routeName,
    this.eventDescription,
  });
}
