import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Widgets/MyDrawer.dart';

final String aboutTheProgram =
    "Campus Ambassador program is a learning opportunity for every person wanting to learn leadership, teamwork and communication skill. Every year, we appoint CA’s from different colleges who spread the word about the event in their respective organizations. By working with different people outside of peer circle, this program brings a unique opportunity to learn how to work professionally and how to be an effective orator. By enrolling in the program, you would interact with the students of your college directly and become a connecting link between us and them.";

final String whatWillYouBeDoing =
    '''As the CA you will be carrying out following tasks:
1. Creating awareness about Blithchron ’21 among your college’s student community.
2. Bringing in participation for various kinds of events from your college.
3. Increasing the reach of Social Media platforms by sharing the content we put out on various other social media.
4. Getting more and more downloads of our app on Google Play Store to increase awareness about the event.
This list is not exhaustive and you might be asked to do more as and when
required. ''';

final String incentives =
    '''Apart from the various skills that you would learn being the CA for the event there are exciting prizes and incentives. Being the top CA can get your prizes worth Rs. 4000 and other exciting incentives like:
1. Official Merchandise
2. Vouchers
3. Customizable bag badges, and more.
Moreover, you would also be given the certificate for representing Blithchron as the campus ambassador of your college. ''';

class CampusAdvisorScreen extends StatelessWidget {
  static const routeName = '\CampusAdvisorScreen';

  final Shadow dropShadow2 = new Shadow(
    blurRadius: 5,
    color: Color(0x55000000),
    offset: Offset(4, 4),
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

  @override
  Widget build(BuildContext context) {
    double _screenHeight;
    double _screenWidth;

    //responsive media query
    final data = MediaQuery.of(context);
    // print(data.size);

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

    return Scaffold(
      drawer: MyDrawer(),
      backgroundColor: Color(0xff1e2025),
      appBar: AppBar(
        backgroundColor: Color(0xff1e2025),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(_screenWidth * 0.05, 0.0, 0.0, 0.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Campus\nAmbassador",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    foreground: Paint()..shader = linearGradient,
                    fontSize: _screenHeight * 0.065,
                    height: _screenHeight * 0.0015, // Problem
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  _screenWidth * 0.05, 0.0, 0.0, _screenHeight * 0.02),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "BECOME A CAMPUS AMBASSADOR TODAY!",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    foreground: Paint()..shader = linearGradient,
                    fontSize: _screenHeight * 0.021,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: _screenHeight * 0.015,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: _screenHeight * 0.05,
                  width: _screenWidth * 0.22,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      boxShadow: <BoxShadow>[
                        new BoxShadow(
                          color: Colors.black,
                          blurRadius: 5.0,
                          offset: new Offset(3.0, 3.0),
                        ),
                      ],
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff9a68f8),
                          Color(0xff8a48fd),
                          Color(0xff7320fe)
                        ],
                      )),
                  child: InkWell(
                    onTap: () {
                      launchSocialMedia('https://forms.gle/85Di1WCde1bFf8rXA');
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Register",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: _screenHeight * 0.02,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: _screenWidth * 0.06,
                ),
                Container(
                  height: _screenHeight * 0.05,
                  width: _screenWidth * 0.52,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      boxShadow: <BoxShadow>[
                        new BoxShadow(
                          color: Colors.black,
                          blurRadius: 5.0,
                          offset: new Offset(3.0, 3.0),
                        ),
                      ],
                      gradient: LinearGradient(colors: [
                        Color(0xffff6ed1),
                        Color(0xffff21e0),
                        Color(0xffff27e0)
                      ])),
                  child: InkWell(
                    onTap: () {
                      launchSocialMedia(
                          'https://docs.google.com/document/d/12A3mx0boY-BgU_nWl20_dtYorZqRB68nt8by_-kAbE4/edit?usp=sharing');
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Terms and Conditions",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: _screenHeight * 0.02,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: _screenHeight * 0.025,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  _screenWidth * 0.032, 0.0, _screenWidth * 0.032, 0.0),
              child: Container(
                width: _screenWidth * 0.95,
                // height: _screenHeight * 0.25,
                decoration: BoxDecoration(
                  color: Color(0xff26292e),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  boxShadow: <BoxShadow>[
                    new BoxShadow(
                      color: Colors.black,
                      blurRadius: 5.0,
                      offset: new Offset(7.0, 7.0),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(_screenWidth * 0.05),
                      child: Text(
                        "About the program",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: _screenHeight * 0.03,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(_screenWidth * 0.05, 0,
                          _screenWidth * 0.05, _screenWidth * 0.05),
                      child: Text(
                        aboutTheProgram,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: _screenHeight * 0.018,
                          height: _screenHeight * 0.0018,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: _screenHeight * 0.0055,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: _screenHeight * 0.05,
            ),

            // What will you be doing?

            Padding(
              padding: EdgeInsets.fromLTRB(
                  _screenWidth * 0.032, 0.0, _screenWidth * 0.032, 0.0),
              child: Container(
                width: _screenWidth * 0.95,
                // height: _screenHeight * 0.25,
                decoration: BoxDecoration(
                  color: Color(0xff26292e),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  boxShadow: <BoxShadow>[
                    new BoxShadow(
                      color: Colors.black,
                      blurRadius: 5.0,
                      offset: new Offset(7.0, 7.0),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(_screenWidth * 0.05),
                      child: Text(
                        "What will you be doing?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: _screenHeight * 0.03,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(_screenWidth * 0.05, 0,
                          _screenWidth * 0.05, _screenWidth * 0.05),
                      child: Text(
                        whatWillYouBeDoing,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: _screenHeight * 0.018,
                          height: _screenHeight * 0.0018,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: _screenHeight * 0.0055,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: _screenHeight * 0.05,
            ),

            // What's in it for you?

            Padding(
              padding: EdgeInsets.fromLTRB(
                  _screenWidth * 0.032, 0.0, _screenWidth * 0.032, 0.0),
              child: Container(
                width: _screenWidth * 0.95,
                // height: _screenHeight * 0.25,
                decoration: BoxDecoration(
                  color: Color(0xff26292e),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  boxShadow: <BoxShadow>[
                    new BoxShadow(
                      color: Colors.black,
                      blurRadius: 5.0,
                      offset: new Offset(7.0, 7.0),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(_screenWidth * 0.05),
                      child: Text(
                        "What's in it for you?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: _screenHeight * 0.03,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(_screenWidth * 0.05, 0,
                          _screenWidth * 0.05, _screenWidth * 0.05),
                      child: Text(
                        incentives,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: _screenHeight * 0.018,
                          height: _screenHeight * 0.0018,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: _screenHeight * 0.0055,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: _screenHeight * 0.05,
            ),

            // Questions?

            Padding(
              padding: EdgeInsets.fromLTRB(
                  _screenWidth * 0.032, 0.0, _screenWidth * 0.032, 0.0),
              child: Container(
                width: _screenWidth * 0.95,
                // height: _screenHeight * 0.25,
                decoration: BoxDecoration(
                  color: Color(0xff26292e),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  boxShadow: <BoxShadow>[
                    new BoxShadow(
                      color: Colors.black,
                      blurRadius: 5.0,
                      offset: new Offset(7.0, 7.0),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(_screenWidth * 0.05),
                      child: Text(
                        "Questions?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: _screenHeight * 0.03,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(_screenWidth * 0.05, 0,
                          _screenWidth * 0.05, _screenWidth * 0.05),
                      child: Row(
                        children: [
                          Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                _screenWidth * 0.035, 0, 0, 0),
                            child: InkWell(
                              onTap: () {
                                launchPhoneCall(9390209737);
                              },
                              child: Text(
                                "Rishitha: +91 93902 09737",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: _screenHeight * 0.025,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(_screenWidth * 0.05, 0,
                          _screenWidth * 0.05, _screenWidth * 0.05),
                      child: Row(
                        children: [
                          Icon(
                            Icons.mail_outline,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                _screenWidth * 0.035, 0, 0, 0),
                            child: Text(
                              "blithchron@iitgn.ac.in",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: _screenHeight * 0.025,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: _screenHeight * 0.0055,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: _screenHeight * 0.05,
            ),

            // Card(
            //   child: Container(
            //     child: Column(
            //       children: [
            //         Text("What will you be doing?"),
            //         Text("A"),
            //         Text("B"),
            //         Text("C"),
            //         Text("D"),
            //         Text("E"),
            //         SizedBox(
            //           height: 10,
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Card(
            //   child: Container(
            //     child: Column(
            //       children: [
            //         Text("What will you gain?"),
            //         Text("A"),
            //         Text("B"),
            //         Text("C"),
            //         Text("D"),
            //         Text("E"),
            //         SizedBox(
            //           height: 10,
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Card(
            //   child: Container(
            //     child: Column(
            //       children: [
            //         Text("Incentives"),
            //         Text("A"),
            //         Text("B"),
            //         Text("C"),
            //         Text("D"),
            //         Text("E"),
            //         SizedBox(
            //           height: 10,
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Card(
            //   child: Container(
            //     child: Column(
            //       children: [
            //         Text("Questions?"),
            //         Row(
            //           children: [
            //             Icon(Icons.phone),
            //             Text("Rishita:123456789"),
            //           ],
            //         ),
            //         Row(
            //           children: [
            //             Icon(Icons.mail_outline),
            //             Text("blithchron@iitgn.ac.in"),
            //           ],
            //         ),
            //         SizedBox(
            //           height: 10,
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}