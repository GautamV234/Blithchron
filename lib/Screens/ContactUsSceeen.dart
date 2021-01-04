import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsScreen extends StatelessWidget {
  @override
  static const routeName = '\ContactUsScreen';
  String instaUrl = 'https://www.instagram.com/blithchron_iitgn/';
  String facebookUrl = 'https://www.facebook.com/Blithchron';
  String youTubeUrl = 'https://www.youtube.com/user/IITGnBlithchron';
  String twitterUrl = 'https://twitter.com/blithchroniitgn?lang=en';

  Future<void> launchSocialMedia(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Follow Us'),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(Icons.circle),
                Text('blithchron.iitgn.ac.in'),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                /// choose the social networking icons from some package
                ///Insta
                IconButton(
                  icon: Icon(Icons.ac_unit),
                  onPressed: () {
                    launchSocialMedia(instaUrl);
                  },
                ),
                // twitter
                IconButton(
                  icon: Icon(Icons.ac_unit),
                  onPressed: () {
                    launchSocialMedia(twitterUrl);
                  },
                ),
                //youtube
                IconButton(
                  icon: Icon(Icons.ac_unit),
                  onPressed: () {
                    launchSocialMedia(youTubeUrl);
                  },
                ),

                /// facebook
                IconButton(
                  icon: Icon(Icons.ac_unit),
                  onPressed: () {
                    launchSocialMedia(facebookUrl);
                  },
                ),
              ],
            ),
            Text('Contact Us'),
            SizedBox(
              height: 10,
            ),
            // message icon get from some package
            Row(
              children: [
                Icon(Icons.message),
                Text('blithchron@iitgn.ac.in'),
              ],
            ),
            //  we could create a widget but Lousy coding here repeating template four times feel free to change
            SizedBox(height: 100),
            Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      ClipRRect(child: null),

                      /// add images once they come,
                      Column(
                        children: [
                          Text('Ashwani Rai'),
                          Text('911'),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    children: [
                      ClipRRect(child: null),

                      /// add images once they come,
                      Column(
                        children: [
                          Text('Eshika Pathak'),
                          Text('911'),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    children: [
                      ClipRRect(child: null),

                      /// add images once they come,
                      Column(
                        children: [
                          Text('Isha Bayad'),
                          Text('911'),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    children: [
                      ClipRRect(child: null),

                      /// add images once they come,
                      Column(
                        children: [
                          Text('Rushik Desai'),
                          Text('911'),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
