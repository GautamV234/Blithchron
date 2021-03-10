import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Widgets/MyDrawer.dart';

class ContactUsScreen extends StatelessWidget {
  // @override
  static const routeName = '\ContactUsScreen';
  final String instaUrl = 'https://www.instagram.com/blithchron_iitgn/';
  final String facebookUrl = 'https://www.facebook.com/Blithchron';
  final String youTubeUrl = 'https://www.youtube.com/user/IITGnBlithchron';
  final String twitterUrl = 'https://twitter.com/blithchroniitgn?lang=en';
  final String websiteUrl = 'https://blithchron.iitgn.ac.in';
  final String email = 'blithchron@iitgn.ac.in';

  final BoxDecoration shadow1 = BoxDecoration(
    color: Colors.grey.shade800,
    borderRadius: BorderRadius.all(
      Radius.circular(15.0),
    ),
    boxShadow: <BoxShadow>[
      new BoxShadow(
        color: Colors.black54,
        blurRadius: 5.0,
        offset: new Offset(3.0, 3.0),
      ),
    ],
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

    final Shader linearGradient = LinearGradient(
      colors: <Color>[
        Color(0xff64d2ff),
        Color(0xff0a84ff),
        Color(0xff5e5ce6),
        Color(0xffbf5af2),
        Color(0xffff375f),
      ],
    ).createShader(
      Rect.fromLTWH(0.0, 0.0, _screenWidth * 0.65, 70.0),
    );

    return Scaffold(
      drawer: MyDrawer(),
      backgroundColor: Color(0xff1e2025),
      appBar: AppBar(
        backgroundColor: Color(0xff1e2025),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: _screenHeight * 0.01796,
                  // height: 15,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      0.0, _screenHeight * 0.01197, 0.0, 0.0),
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
                      padding: EdgeInsets.fromLTRB(
                          0.0, 0.0, _screenWidth * 0.0309, 0.0),
                      child: IconButton(
                        icon:
                            new Image.asset("assets/social/website_white.png"),
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
                          color: Colors.white,
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
                      icon: new Image.asset("assets/social/insta_white.png"),
                      iconSize: _screenWidth * 0.005,
                      onPressed: () {
                        launchSocialMedia(instaUrl);
                      },
                    ),
                    // twitter
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          _screenWidth * 0.04, 0.0, _screenWidth * 0.02, 0.0),
                      child: IconButton(
                        icon:
                            new Image.asset("assets/social/twitter_white.png"),
                        onPressed: () {
                          launchSocialMedia(twitterUrl);
                        },
                      ),
                    ),
                    //youtube
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          _screenWidth * 0.02, 0.0, _screenWidth * 0.04, 0.0),
                      child: IconButton(
                        icon:
                            new Image.asset("assets/social/youtube_white.png"),
                        // iconSize: _screenWidth * 0.1,
                        onPressed: () {
                          launchSocialMedia(youTubeUrl);
                        },
                      ),
                    ),

                    /// facebook
                    IconButton(
                      icon: new Image.asset("assets/social/facebook_white.png"),
                      onPressed: () {
                        launchSocialMedia(facebookUrl);
                      },
                    ),
                  ],
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(
                      0.0, _screenHeight * 0.02197, 0.0, 0.0),
                  child: Text('Contact Us',
                      style: TextStyle(
                        fontSize: _screenHeight * 0.0479,
                        foreground: Paint()..shader = linearGradient,
                      )),
                ),
                SizedBox(
                  height: _screenHeight * 0.00197,
                ),
                // message icon get from some package
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        launchEmail(email);
                      },
                      icon: new Image.asset('assets/social/email_white.png'),
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
                          color: Colors.white,
                          fontSize: _screenHeight * 0.02395,
                        ),
                      ),
                    ),
                  ],
                ),

                // Contacts of Cores below
                SizedBox(height: _screenHeight * 0.0229),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // height: _screenHeight * 0.05988,
                      height: _screenHeight * 0.09988,
                      width: _screenWidth * 0.50929,
                      decoration: shadow1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(
                                0, 0, _screenWidth * 0.01, 0),
                            height: _screenHeight * 0.07988,
                            child: ClipRRect(
                              child: Image.asset(
                                'assets/bitmoji/ashwani.png',
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Ashwani Rai',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: _screenHeight * 0.019559,
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
                      height: _screenHeight * 0.09988,
                      width: _screenWidth * 0.509294,
                      decoration: shadow1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(
                                0, 0, _screenWidth * 0.01, 0),
                            height: _screenHeight * 0.07988,
                            child: ClipRRect(
                              child: Image.asset(
                                'assets/bitmoji/eshika.png',
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Eshika Pathak',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: _screenHeight * 0.019559,
                                  // fontSize: _screenHeight * 0.021559,
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
                      height: _screenHeight * 0.09988,
                      width: _screenWidth * 0.509294,
                      decoration: shadow1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(
                                0, 0, _screenWidth * 0.01, 0),
                            height: _screenHeight * 0.07988,
                            child: ClipRRect(
                              child: Image.asset(
                                'assets/bitmoji/isha.png',
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Isha Bayad',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: _screenHeight * 0.019559,
                                  // fontSize: _screenHeight * 0.021559,
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
                      height: _screenHeight * 0.09988,
                      width: _screenWidth * 0.509294,
                      decoration: shadow1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(
                                0, 0, _screenWidth * 0.01, 0),
                            height: _screenHeight * 0.07988,
                            child: ClipRRect(
                              child: Image.asset(
                                'assets/bitmoji/rushik.png',
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Rushik Desai',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: _screenHeight * 0.019559,
                                  // fontSize: _screenHeight * 0.021559,
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
                    SizedBox(
                      height: 20,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
