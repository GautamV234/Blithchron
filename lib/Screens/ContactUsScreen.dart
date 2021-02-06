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
  String email = 'blithchron@iitgn.ac.in';

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

  Future<void> launchPhoneCall(int number) async {
    var url = "tel:${number.toString()}";
    if (await canLaunch(url)) {
      await launch(
        url,
        // forceSafariVC: false,
        // forceWebView: false,
      );
    } else {
      throw 'Could not call $number';
    }
  }

  Future<void> launchEmail(String email) async {
    var url = "mailto:$email";
    if (await canLaunch(url)) {
      await launch(
        url,
        // forceSafariVC: false,
        // forceWebView: false,
      );
    } else {
      throw 'Could not call $email';
    }
  }

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
              height: _screenHeight * 0.01796,
              // height: 15,
            ),
            Padding(
              padding:
                  EdgeInsets.fromLTRB(0.0, _screenHeight * 0.01197, 0.0, 0.0),
              child: Text('Follow Us',
                  style: TextStyle(
                    fontSize: _screenHeight * 0.0479,
                    foreground: Paint()..shader = linearGradient,
                  )),
            ),
            SizedBox(
              height: _screenHeight * 0.0059887,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      EdgeInsets.fromLTRB(0.0, 0.0, _screenWidth * 0.0509, 0.0),
                  child: IconButton(
                    icon: new Image.asset("assets/website_logo_green.png"),
                    onPressed: () {
                      launchSocialMedia(websiteUrl);
                    },
                  ),
                ),
                InkWell(
                  onTap: () {
                    launchSocialMedia(websiteUrl);
                  },
                  child: Text(
                    'blithchron.iitgn.ac.in',
                    style: TextStyle(
                      color: Colors.lightGreen,
                      fontSize: _screenHeight * 0.02395,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: _screenHeight * 0.01197,
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
                  padding: EdgeInsets.fromLTRB(
                      _screenWidth * 0.0509, 0.0, _screenWidth * 0.02546, 0.0),
                  child: IconButton(
                    icon: new Image.asset("assets/twitter_logo_yellow.png"),
                    onPressed: () {
                      launchSocialMedia(twitterUrl);
                    },
                  ),
                ),
                //youtube
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      _screenWidth * 0.02546, 0.0, _screenWidth * 0.0509, 0.0),
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
              padding:
                  EdgeInsets.fromLTRB(0.0, _screenHeight * 0.01197, 0.0, 0.0),
              child: Text('Contact Us',
                  style: TextStyle(
                    fontSize: _screenHeight * 0.0479,
                    foreground: Paint()..shader = linearGradient,
                  )),
            ),
            SizedBox(
              height: _screenHeight * 0.01197,
            ),
            // message icon get from some package
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    launchEmail(email);
                  },
                  icon: new Image.asset('assets/email_logo_green.png'),
                ),
                SizedBox(
                  width: _screenWidth * 0.05092,
                ),
                InkWell(
                  onTap: () {
                    launchEmail(email);
                  },
                  child: Text(
                    'blithchron@iitgn.ac.in',
                    style: TextStyle(
                      color: Colors.lightGreen,
                      fontSize: _screenHeight * 0.02395,
                    ),
                  ),
                ),
              ],
            ),
            //  we could create a widget but Lousy coding here repeating template four times feel free to change
            SizedBox(height: _screenHeight * 0.0479),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // Add height and width acc to image size
                  height: _screenHeight * 0.05988,
                  width: _screenWidth * 0.50929,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade800,
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
                              fontSize: _screenHeight * 0.021559,
                            ),
                          ),
                          SizedBox(height: _screenHeight * 0.00598),
                          InkWell(
                            onTap: () {
                              launchPhoneCall(9766558626);
                            },
                            child: Text(
                              '+91 97665 58626',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: _screenHeight * 0.01437,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: _screenHeight * 0.023954,
                ),
                Container(
                  // Add height and width acc to image size
                  height: _screenHeight * 0.059887,
                  width: _screenWidth * 0.509294,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade800,
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
                              fontSize: _screenHeight * 0.021559,
                            ),
                          ),
                          SizedBox(height: _screenHeight * 0.00598),
                          InkWell(
                            onTap: () {
                              launchPhoneCall(9606643444);
                            },
                            child: Text(
                              '+91 96066 43444',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: _screenHeight * 0.01437,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: _screenHeight * 0.023954,
                ),
                Container(
                  // Add height and width acc to image size
                  height: _screenHeight * 0.059887,
                  width: _screenWidth * 0.509294,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade800,
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
                              fontSize: _screenHeight * 0.021559,
                            ),
                          ),
                          SizedBox(height: _screenHeight * 0.00598),
                          InkWell(
                            onTap: () {
                              launchPhoneCall(9726845541);
                            },
                            child: Text(
                              '+91 97268 45541',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: _screenHeight * 0.01437,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: _screenHeight * 0.023954,
                ),
                Container(
                  // Add height and width acc to image size
                  height: _screenHeight * 0.059887,
                  width: _screenWidth * 0.509294,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade800,
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
                              fontSize: _screenHeight * 0.021559,
                            ),
                          ),
                          SizedBox(height: _screenHeight * 0.00598),
                          InkWell(
                            onTap: () {
                              launchPhoneCall(8369610187);
                            },
                            child: Text(
                              '+91 83696 10187',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: _screenHeight * 0.01437,
                              ),
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
