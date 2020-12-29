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
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(),
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                'Sponsors',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: MediaQuery.of(context).size.height -
                  166, // change these values correspondingly,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
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
            )
          ],
        ),
      )),
    );
  }
}
