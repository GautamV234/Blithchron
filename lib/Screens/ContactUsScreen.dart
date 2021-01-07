import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsScreen extends StatelessWidget {
  @override
  static const routeName = '\ContactUsScreen';
  String instaUrl = 'https://www.instagram.com/blithchron_iitgn/';
  String facebookUrl = 'https://www.facebook.com/Blithchron';
  String youTubeUrl = 'https://www.youtube.com/user/IITGnBlithchron';
  String twitterUrl = 'https://twitter.com/blithchroniitgn?lang=en';
  String websiteUrl = 'https://blithchron.iitgn.ac.in';

  final Shader linearGradient = LinearGradient(
      colors: <Color>[
        Colors.lightBlue,
        Colors.blue,
        Colors.purple,
        Colors.red,
      ],
    ).createShader(
      Rect.fromLTWH(0.0, 0.0, 350.0, 70.0),
    );

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
      backgroundColor: Color(0xff1e2025),
      appBar: AppBar(
        backgroundColor: Color(0xff1e2025),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
              child: Text(
                'Follow Us',
                style: TextStyle(
                  fontSize: 40,
                  foreground: Paint()..shader = linearGradient,
                )
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0 , 0.0, 20.0, 0.0),
                  child: IconButton(
                    icon: new Image.asset("assets/website_logo_green.png"),
                    onPressed: () {
                      launchSocialMedia(websiteUrl);
                    },
                  ),
                ),
                Text(
                  'blithchron.iitgn.ac.in',
                  style: TextStyle(
                    color: Colors.lightGreen,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ///Insta
                // Use the SizedBox if want to change icon size
                // SizedBox(
                //   height: 50,
                //   width: 50,
                //   child: IconButton(
                //     icon: new Image.asset("assets/insta_logo_yellow2.png"),
                //     onPressed: () {
                //       launchSocialMedia(instaUrl);
                //     },
                //   ),
                // ),
                IconButton(
                    icon: new Image.asset("assets/insta_logo_yellow2.png"),
                    onPressed: () {
                      launchSocialMedia(instaUrl);
                    },
                  ),
                // twitter
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0 , 0.0, 10.0, 0.0),
                  child: IconButton(
                    icon: new Image.asset("assets/twitter_logo_yellow.png"),
                    onPressed: () {
                      launchSocialMedia(twitterUrl);
                    },
                  ),
                ),
                //youtube
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0 , 0.0, 20.0, 0.0),
                  child: IconButton(
                    icon: new Image.asset("assets/youtube_logo_yellow.png"),
                    onPressed: () {
                      launchSocialMedia(youTubeUrl);
                    },
                  ),
                ),
                /// facebook
                IconButton(
                  icon: new Image.asset("assets/facebook_logo_yellow.png"),
                  onPressed: () {
                    launchSocialMedia(facebookUrl);
                  },
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
              child: Text(
                'Contact Us',
                style: TextStyle(
                  fontSize: 40,
                  foreground: Paint()..shader = linearGradient,
                )
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // message icon get from some package
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton( // TODO: Mailto on tap
                  icon: new Image.asset('assets/email_logo_green.png'),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'blithchron@iitgn.ac.in', // TODO: Mailto on tap
                  style: TextStyle(
                    color: Colors.lightGreen,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            //  we could create a widget but Lousy coding here repeating template four times feel free to change
            SizedBox(height: 40),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // Add height and width acc to image size
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(child: null),

                      /// add images once they come,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ashwani Rai',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '+91 97665 58626', // TODO: Call directly on tap
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  // Add height and width acc to image size
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(child: null),

                      /// add images once they come,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Eshika Pathak',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '+91 96066 43444', // TODO: Call directly on tap
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  // Add height and width acc to image size
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(child: null),

                      /// add images once they come,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Isha Bayad',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '+91 97268 45541', // TODO: Call directly on tap
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  // Add height and width acc to image size
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(child: null),

                      /// add images once they come,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Rushik Desai',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '+91 83696 10187', // TODO: Call directly on tap
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                // SizedBox(
                //   height: 20,
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
