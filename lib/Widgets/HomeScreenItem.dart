import 'package:flutter/material.dart';

class HomeScreenItem extends StatelessWidget {
  final String dateDay;
  final String dateSuffix;
  final String dateMonth;
  final String eventName;
  final String eventDescription;
  final String routeName;
  final List<Color> colorOfCard;
  final Shadow dropShadow2 = new Shadow(
    blurRadius: 5,
    color: Color(0x55000000),
    offset: Offset(4, 4),
  );

  HomeScreenItem({
    @required this.dateDay,
    @required this.dateSuffix,
    @required this.dateMonth,
    @required this.eventName,
    @required this.eventDescription,
    @required this.routeName,
    @required this.colorOfCard,
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

    return InkWell(
      onTap: () {
        if (routeName != 'None') {
          // Navigator.push
        }
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: _screenWidth * 0.0533,
            // width: 40,
          ),
          Container(
            width: _screenWidth * 0.12,
            // height: _screenHeight * 0.115,
            child: Column(
              children: [
                Row(
                  children: [
                    // SizedBox(
                    //   width: _screenWidth * 0.007,
                    // ),
                    Text(
                      this.dateDay,
                      style: TextStyle(
                        shadows: [
                          dropShadow2,
                        ],
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: _screenHeight * 0.024,
                      ),
                    ),
                    SizedBox(
                      width: _screenWidth * 0.004,
                    ),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            this.dateSuffix,
                            style: TextStyle(
                              shadows: [
                                dropShadow2,
                              ],
                              color: Colors.white,
                              fontSize: _screenHeight * 0.014,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: _screenHeight * 0.01,
                        ),
                      ],
                    ),
                  ],
                ),
                // SizedBox(
                //   height: _screenHeight * 0.0001,
                //   // height: 10,
                // ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    this.dateMonth,
                    style: TextStyle(
                      shadows: [
                        dropShadow2,
                      ],
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: _screenHeight * 0.0185,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: _screenWidth * 0.1,
            height: _screenHeight * 0.115,
            // width: 45,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                _screenWidth * 0.0103,
                _screenWidth * 0.0103,
                _screenWidth * 0.0103,
                _screenWidth * 0.025),
            // padding: const EdgeInsets.all(8.0),
            child: Container(
              width: _screenWidth * 0.63,
              height: _screenHeight * 0.115,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15.0),
                ),
                boxShadow: <BoxShadow>[
                  new BoxShadow(
                    color: Color(0x55000000),
                    blurRadius: 3.5,
                    offset: new Offset(4, 4),
                  ),
                ],
              ),
              child: Container(
                width: _screenWidth * 0.63,
                height: _screenHeight * 0.115,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    gradient: LinearGradient(
                      colors: colorOfCard,
                    )),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                      _screenWidth * 0.04, _screenHeight * 0.0145, 0.0, 0.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          eventName,
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: _screenHeight * 0.02,
                            // fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: _screenHeight * 0.00479,
                        // height: 4,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          eventDescription,
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            color: Colors.white,
                            fontSize: _screenHeight * 0.013,
                            // fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: _screenHeight * 0.0359,
                        // height: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
