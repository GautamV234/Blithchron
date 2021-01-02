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
      appBar: AppBar(
        backgroundColor: Color(0xff1e2025),
      ),
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              height: 70,
              width: 200,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius:
                 BorderRadius.all(
                   Radius.circular(10.0),
                  ),
                  gradient: LinearGradient(
                    colors: [Color(0xff9a68f8), Color(0xff8a48fd), Color(0xff7320fe)],
                  ),
              ),
              child: Center(
                child: Text(
                'Sponsors',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  ),
              ),
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
