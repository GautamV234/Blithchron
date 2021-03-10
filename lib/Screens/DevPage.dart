import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DevPage extends StatelessWidget {
  static const routeName = '\DevPage';

  final String emailG = 'gautam.pv@iitgn.ac.in';
  final String emailS = 'saagar.p@iitgn.ac.in';
  final String emailP = 'gupta.paras@iitgn.ac.in';
  // final String emailR = 'blithchron@iitgn.ac.in';
  final String gitG = 'blithchron@iitgn.ac.in';
  final String gitS = 'blithchron@iitgn.ac.in';
  final String gitP = 'blithchron@iitgn.ac.in';
  // final String gitR = 'blithchron@iitgn.ac.in';

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

  //@override
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
                    height: _screenHeight * 0.03396,
                    // height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        0.0, _screenHeight * 0.01197, 0.0, 0.0),
                    child: Text('Developers',
                        style: TextStyle(
                          fontSize: _screenHeight * 0.0479,
                          foreground: Paint()..shader = linearGradient,
                        )),
                  ),
                  SizedBox(
                    height: _screenHeight * 0.033887,
                  ),
                  Row(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ////////////////////////////////////////
                      Transform.scale(
                        scale: 0.95,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                            boxShadow: <BoxShadow>[
                              new BoxShadow(
                                color: Colors.black,
                                blurRadius: 5.0,
                                offset: new Offset(3.0, 3.0),
                              ),
                            ],
                            color: Color(0xff26292e),
                          ),

                          // height: _screenHeight * 0.05988,
                          height: _screenHeight * 0.24,
                          width: _screenWidth * 0.75929,
                          // decoration: shadow1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: _screenWidth * 0.08,
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(
                                        0, 0, _screenWidth * 0.01, 0),
                                    height: _screenHeight * 0.10,
                                    child: ClipRRect(
                                      child: Image.asset(
                                        'assets/bitmoji/gautam.png',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(height: _screenHeight * 0.0378),
                                      Text(
                                        'Gautam',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: _screenHeight * 0.026559,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: _screenHeight * 0.0168),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Transform.scale(
                                    scale: 0.7,
                                    child: IconButton(
                                      onPressed: () {
                                        launchEmail(emailG);
                                      },
                                      icon: new Image.asset(
                                          'assets/social/email_white.png'),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      launchEmail(emailG);
                                    },
                                    child: Text(
                                      emailG,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: _screenHeight * 0.01895,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // SizedBox(height: _screenHeight * 0.00098),
                              // Row(
                              //   mainAxisAlignment: MainAxisAlignment.center,
                              //   children: [
                              //     Transform.scale(
                              //       scale: 0.7,
                              //       child: IconButton(
                              //         onPressed: () {
                              //           launchEmail(emailG);
                              //         },
                              //         icon: Image.asset(
                              //             'assets/social/email_white.png'),
                              //       ),
                              //     ),
                              //     InkWell(
                              //       onTap: () {
                              //         launchEmail(gitG);
                              //       },
                              //       child: Text(
                              //         'blithchron@iitgn.ac.in',
                              //         style: TextStyle(
                              //           color: Colors.white,
                              //           fontSize: _screenHeight * 0.01895,
                              //         ),
                              //       ),
                              //     ),
                              //   ],
                              // ),
                              // SizedBox(height: _screenHeight * 0.0198),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: _screenHeight * 0.009954,
                      ),
                      ////////////////////////////////////////
                      Transform.scale(
                        scale: 0.95,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                            boxShadow: <BoxShadow>[
                              new BoxShadow(
                                color: Colors.black,
                                blurRadius: 5.0,
                                offset: new Offset(3.0, 3.0),
                              ),
                            ],
                            color: Color(0xff26292e),
                          ),

                          // height: _screenHeight * 0.05988,
                          height: _screenHeight * 0.24,
                          width: _screenWidth * 0.75929,
                          // decoration: shadow1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: _screenWidth * 0.08,
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(
                                        0, 0, _screenWidth * 0.01, 0),
                                    height: _screenHeight * 0.10,
                                    child: ClipRRect(
                                      child: Image.asset(
                                        'assets/bitmoji/saagar.png',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(height: _screenHeight * 0.0378),
                                      Text(
                                        'Saagar',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: _screenHeight * 0.026559,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: _screenHeight * 0.0168),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Transform.scale(
                                    scale: 0.7,
                                    child: IconButton(
                                      onPressed: () {
                                        launchEmail(emailG);
                                      },
                                      icon: new Image.asset(
                                          'assets/social/email_white.png'),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      launchEmail(emailS);
                                    },
                                    child: Text(
                                      emailS,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: _screenHeight * 0.01895,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // SizedBox(height: _screenHeight * 0.00098),
                              // Row(
                              //   mainAxisAlignment: MainAxisAlignment.center,
                              //   children: [
                              //     Transform.scale(
                              //       scale: 0.7,
                              //       child: IconButton(
                              //         onPressed: () {
                              //           launchEmail(emailS);
                              //         },
                              //         icon: Image.asset(
                              //             'assets/social/email_white.png'),
                              //       ),
                              //     ),
                              //     InkWell(
                              //       onTap: () {
                              //         launchEmail(gitS);
                              //       },
                              //       child: Text(
                              //         'blithchron@iitgn.ac.in',
                              //         style: TextStyle(
                              //           color: Colors.white,
                              //           fontSize: _screenHeight * 0.01895,
                              //         ),
                              //       ),
                              //     ),
                              //   ],
                              // ),
                              // SizedBox(height: _screenHeight * 0.0198),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: _screenHeight * 0.009954,
                      ),
                      ////////////////////////////////////////
                      Transform.scale(
                        scale: 0.95,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                            boxShadow: <BoxShadow>[
                              new BoxShadow(
                                color: Colors.black,
                                blurRadius: 5.0,
                                offset: new Offset(3.0, 3.0),
                              ),
                            ],
                            color: Color(0xff26292e),
                          ),

                          // height: _screenHeight * 0.05988,
                          height: _screenHeight * 0.24,
                          width: _screenWidth * 0.75929,
                          // decoration: shadow1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: _screenWidth * 0.08,
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(
                                        0, 0, _screenWidth * 0.01, 0),
                                    height: _screenHeight * 0.10,
                                    child: ClipRRect(
                                      child: Image.asset(
                                        'assets/bitmoji/paras.png',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(height: _screenHeight * 0.0378),
                                      Text(
                                        ' Paras',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: _screenHeight * 0.026559,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: _screenHeight * 0.0168),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Transform.scale(
                                    scale: 0.7,
                                    child: IconButton(
                                      onPressed: () {
                                        launchEmail(emailP);
                                      },
                                      icon: new Image.asset(
                                          'assets/social/email_white.png'),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      launchEmail(emailP);
                                    },
                                    child: Text(
                                      emailP,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: _screenHeight * 0.01895,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // SizedBox(height: _screenHeight * 0.00098),
                              // Row(
                              //   mainAxisAlignment: MainAxisAlignment.center,
                              //   children: [
                              //     Transform.scale(
                              //       scale: 0.7,
                              //       child: IconButton(
                              //         onPressed: () {
                              //           launchEmail(emailG);
                              //         },
                              //         icon: Image.asset(
                              //             'assets/social/email_white.png'),
                              //       ),
                              //     ),
                              //     InkWell(
                              //       onTap: () {
                              //         launchEmail(gitP);
                              //       },
                              //       child: Text(
                              //         'blithchron@iitgn.ac.in',
                              //         style: TextStyle(
                              //           color: Colors.white,
                              //           fontSize: _screenHeight * 0.01895,
                              //         ),
                              //       ),
                              //     ),
                              //   ],
                              // ),
                              // SizedBox(height: _screenHeight * 0.0198),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: _screenHeight * 0.023954,
                      ),
                      SizedBox(
                        height: _screenHeight * 0.023954,
                      ),
                      SizedBox(
                        height: _screenHeight * 0.023954,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
