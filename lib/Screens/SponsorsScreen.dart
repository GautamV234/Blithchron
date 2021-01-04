import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Providers/SponsorsProvider.dart';
import '../Model/SponsorModel.dart';
import '../Widgets/SponsorItem.dart';

class SponsorsScreen extends StatelessWidget {
  @override
  static const routeName = '\SponsorsScreen';
  Widget build(BuildContext context) {
    final sponsorsDataProvider = Provider.of<SponsorDataProvider>(context);
    final List<SponsorModel> sponsorsList = sponsorsDataProvider.sponsorsList;

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
    /////////////////////////

    return Scaffold(
      backgroundColor: Color(0xff1e2025),
      appBar: AppBar(
        backgroundColor: Color(0xff1e2025),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          child: Column(
            children: [
              SizedBox(
                height: _screenHeight * 0.02994,
              ),
              Container(
                height: _screenHeight * 0.08384,
                width: _screenWidth * 0.611,
                padding: EdgeInsets.fromLTRB(
                    _screenWidth * 0.02546,
                    _screenHeight * 0.01197,
                    _screenWidth * 0.02546,
                    _screenHeight * 0.01197),
                // padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.0),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff9a68f8),
                      Color(0xff8a48fd),
                      Color(0xff7320fe)
                    ],
                  ),
                ),
                child: Center(
                  child: Text(
                    'Sponsors',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: _screenHeight * 0.0467,
                        // fontSize: 39,
                        fontWeight: FontWeight.w100),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                height: _screenHeight * 0.0479,
                // height: 40,
              ),
              SafeArea(
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      _screenWidth * 0.02546, 0, _screenWidth * 0.02546, 0),
                  height: _screenHeight -
                      _screenHeight *
                          0.2275, // change these values correspondingly,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: _screenWidth * 0.5092,
                      // maxCrossAxisExtent: 200,
                      childAspectRatio: 1.2,
                      crossAxisSpacing: _screenWidth * 0.0127,
                      mainAxisSpacing: _screenHeight * 0.00958,
                      // crossAxisSpacing: 5,
                      // mainAxisSpacing: 8.0,
                    ),
                    itemBuilder: (ctx, i) {
                      return SponsorItem(
                        sponsorName: sponsorsList[i].sponsorName,
                        sponsorTitle: sponsorsList[i].sponsorTitle,
                        sponsorUrl: sponsorsList[i].sponsorUrl,
                      );
                    },
                    itemCount: sponsorsList.length,
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
