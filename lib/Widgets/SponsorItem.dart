import 'package:flutter/material.dart';

class SponsorItem extends StatelessWidget {
  String sponsorUrl;
  String sponsorName;
  String sponsorTitle;
  SponsorItem({
    @required this.sponsorName,
    @required this.sponsorTitle,
    @required this.sponsorUrl,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ClipRRect(
            child: Image.asset(
              sponsorUrl,
              height: 20,

              /// change the value correspondingly
            ),
          ),
          Text(
            sponsorTitle,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
