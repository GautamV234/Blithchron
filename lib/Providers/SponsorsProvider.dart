import 'package:flutter/material.dart';
import '../Model/SponsorModel.dart';

class SponsorDataProvider with ChangeNotifier {
  final List<SponsorModel> _newsponsorsList = [
    SponsorModel(
        //1
        sponsorName: 'Gujarat Tourism',
        sponsorTitle: 'Title Sponsor',
        sponsorUrl: 'assets/gujaratTourism.png'),
    SponsorModel(
        //2
        sponsorName: 'ITC',
        sponsorTitle: 'CSR Sponsor',
        sponsorUrl: 'assets/ITC.png'),
    SponsorModel(
        //3
        sponsorName: 'GIL',
        sponsorTitle: 'Information Partner',
        sponsorUrl: 'assets/GIL_Logo.png'),
    SponsorModel(
        //4
        sponsorName: 'Yocket',
        sponsorTitle: 'Study Abroad Partner',
        sponsorUrl: 'assets/yocket.png'),
    SponsorModel(
        //5
        sponsorName: 'Garvi Gurjari',
        sponsorTitle: 'Handicraft and Handloom Sponsor',
        sponsorUrl: 'assets/Garvi.png'),
  ];

  final List<SponsorModel> _sponsorsList = [
    SponsorModel(
        //1
        sponsorName: 'Vivo',
        sponsorTitle: 'Pronites Title Sponsor',
        sponsorUrl: 'assets/Vivo_Logo.png'),
    SponsorModel(
        //2
        sponsorName: 'Paytm',
        sponsorTitle: 'Event Sponsor',
        sponsorUrl: 'assets/paytm.jpeg'),
    SponsorModel(
        //3
        sponsorName: 'KHS',
        sponsorTitle: 'Major Event Sponsor',
        sponsorUrl: 'assets/KHS_Logo.png'),
    SponsorModel(
        //4
        sponsorName: 'Union Bank',
        sponsorTitle: 'Event Sponsor',
        sponsorUrl: 'assets/UnionBank_Logo.png'),
    SponsorModel(
        //5
        sponsorName: 'Tinder',
        sponsorTitle: 'Partner',
        sponsorUrl: 'assets/TinderName_Logo.png'),
    SponsorModel(
        //6
        sponsorName: 'Monster',
        sponsorTitle: 'Official Energy Drink Partner',
        sponsorUrl: 'assets/Monster_Logo.jpg'),
    SponsorModel(
        //7
        sponsorName: 'Zebronics',
        sponsorTitle: 'Audio Partner',
        sponsorUrl: 'assets/ZebronicsLogo.jpg'),
    SponsorModel(
        //8
        sponsorName: 'JK Lakshmi Cement',
        sponsorTitle: 'CSR Partner',
        sponsorUrl: 'assets/JK_Logo.jpg'),
    SponsorModel(
        //9
        sponsorName: 'Amul',
        sponsorTitle: 'Dairy Partner',
        sponsorUrl: 'assets/amul.jpg'),
    SponsorModel(
        //10
        sponsorName: 'ITC Limited',
        sponsorTitle: 'Event Sponsor',
        sponsorUrl: 'assets/ITC_Logo.jpg'),
    SponsorModel(
        //11
        sponsorName: 'Jawed Habib',
        sponsorTitle: 'Grooming Partner',
        sponsorUrl: 'assets/JawedHabibLogo.png'),
    SponsorModel(
        //12
        sponsorName: 'Play Station',
        sponsorTitle: 'Console Partner for Skirmish',
        sponsorUrl: 'assets/play-station.jpeg'),
    SponsorModel(
        //13
        sponsorName: 'Canara Bank',
        sponsorTitle: 'Event Sponsor',
        sponsorUrl: 'assets/CanaraBankLogo.png'),
    SponsorModel(
        //14
        sponsorName: 'ICICI Bank',
        sponsorTitle: 'Partner',
        sponsorUrl: 'assets/IciciBankLogo.png'),
    SponsorModel(
        //15
        sponsorName: 'Townscript',
        sponsorTitle: 'Ticketing Partner',
        sponsorUrl: 'assets/TownScript_Logo.png'),
    SponsorModel(
        //16
        sponsorName: 'Tea Post',
        sponsorTitle: 'Chai partner',
        sponsorUrl: 'assets/tea-post.jpg'),
    SponsorModel(
        //17
        sponsorName: 'The Souled Store',
        sponsorTitle: 'Prime gifting partner',
        sponsorUrl: 'assets/SouledStore_Logo.jpg'),
    SponsorModel(
        //18
        sponsorName: 'Breakout',
        sponsorTitle: 'Event Partner',
        sponsorUrl: 'assets/breakout-logo.jpg'),
    SponsorModel(
        //19
        sponsorName: 'Respawn- The Gaming Club',
        sponsorTitle: 'Gaming Partner',
        sponsorUrl: 'assets/Respawn_Logo.png'),
    SponsorModel(
        //20
        sponsorName: 'Brew House - Ice Tea',
        sponsorTitle: 'Ice Tea Partner',
        sponsorUrl: 'assets/BrewHouseLogo.png'),
    SponsorModel(
        //21
        sponsorName: 'Bangalore Open Air',
        sponsorTitle: 'Event Partner',
        sponsorUrl: 'assets/BangaloreOpenAirLogo.jpeg'),
    SponsorModel(
        //22
        sponsorName: 'Status Fashion',
        sponsorTitle: 'Fashion Partner',
        sponsorUrl: 'assets/StatusFashionLogo.PNG'),
    SponsorModel(
        //23
        sponsorName: 'ATKT',
        sponsorTitle: 'Partner',
        sponsorUrl: 'assets/ATKT_Logo_2.png'),
    SponsorModel(
        //24
        sponsorName: 'Aquafeel',
        sponsorTitle: 'Hydration Partner',
        sponsorUrl: 'assets/AquaFeelLogo.png'),
    SponsorModel(
        //25
        sponsorName: 'GiL',
        sponsorTitle: 'Information Partner',
        sponsorUrl: 'assets/GIL_Logo.png'),
    SponsorModel(
        //26
        sponsorName: 'Grand Mercure',
        sponsorTitle: 'Hospitality Partner',
        sponsorUrl: 'assets/grand-mercure.jpeg'),
    SponsorModel(
        //27
        sponsorName: 'Oriental Aromatics',
        sponsorTitle: 'CSR Partner',
        sponsorUrl: 'assets/OrientalAromatics_Logo.jpg'),
    SponsorModel(
        //28
        sponsorName: 'The Raza Foundation',
        sponsorTitle: 'Cultural Partner',
        sponsorUrl: 'assets/RazaFoundationLogo.png'),
    SponsorModel(
        //29
        sponsorName: 'RagatoRock',
        sponsorTitle: 'Digital Media Partner',
        sponsorUrl: 'assets/RagaRockLogo.png'),
    SponsorModel(
        //30
        sponsorName: 'GVFL',
        sponsorTitle: 'Event Sponsor',
        sponsorUrl: 'assets/GVFL.jpg'),
    SponsorModel(
        //31
        sponsorName: 'AAAG',
        sponsorTitle: 'Event Sponsor',
        sponsorUrl: 'assets/AAAG.jpg'),
    SponsorModel(
        //32
        sponsorName: 'Garvi Gurjari',
        sponsorTitle: 'Handicraft Partner',
        sponsorUrl: 'assets/Garvi.png'),
    SponsorModel(
        //33
        sponsorName: 'Capital Dental Clinic',
        sponsorTitle: 'Smile Partner',
        sponsorUrl: 'assets/CapitalDentalLogo.PNG'),
  ];
  List<SponsorModel> get sponsorsList {
    return [..._sponsorsList];
  }

  List<SponsorModel> get newsponsorsList {
    return [..._newsponsorsList];
  }
}
