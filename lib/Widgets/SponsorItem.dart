import 'package:flutter/material.dart';

class SponsorItem extends StatelessWidget {
  final String sponsorUrl;
  final String sponsorName;
  final String sponsorTitle;
  SponsorItem({
    @required this.sponsorName,
    @required this.sponsorTitle,
    @required this.sponsorUrl,
  });
  @override
  Widget build(BuildContext context) {
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

    return SafeArea(
      child: Container(
        padding: EdgeInsets.fromLTRB(
            _screenWidth * 0.06366, 0, _screenWidth * 0.06366, 0),
        // padding: EdgeInsets.fromLTRB(25.0, 0, 25.0, 0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                sponsorUrl,
                height: _screenHeight * 0.08983,
                // height: 75,
                /// change the value correspondingly
              ),
            ),
            SizedBox(
              height: _screenHeight * 0.02395,
              // height: 20.0
            ),
            Text(
              sponsorTitle,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w100),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
