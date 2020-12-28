import 'package:flutter/material.dart';
import '../Model/SponsorModel.dart';

class SponsorDataProvider with ChangeNotifier {
  final List<SponsorModel> _sponsorsList = [
    SponsorModel(
        sponsorName: 'ITC Limited',
        sponsorTitle: 'Event Sponsor',
        sponsorUrl: 'assets/ITC_Logo.jpg'),
    SponsorModel(
        sponsorName: 'Union Bank',
        sponsorTitle: 'Event Sponsor',
        sponsorUrl: 'assets/UnionBank_Logo.png'),

    /// add the same for all other sponsors in the same way!
    /// add the names of sponsors and titles according to that Doc.
    /// ***Dont forget to first add the photos in pubspec with the right address and name.
  ];
  List<SponsorModel> get sponsorsList {
    return [..._sponsorsList];
  }
}
