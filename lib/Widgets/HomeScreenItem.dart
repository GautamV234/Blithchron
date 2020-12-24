import 'package:flutter/material.dart';

class HomeScreenItem extends StatelessWidget {
  final String dateDay;
  final String dateMonth;
  final String eventName;
  final String eventDescription;
  final String routeName;
  final Color colorOfCard;

  HomeScreenItem({
    @required this.dateDay,
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
    print(data.size);

    double _screenHeight = data.size.height;
    double _screenWidth = data.size.width;
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
            width: _screenWidth * 0.1018,
            // width: 40,
          ),
          Column(
            children: [
              Text(
                this.dateDay,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: _screenHeight * 0.01198,
                // height: 10,
              ),
              Text(
                this.dateMonth,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
          SizedBox(
            width: _screenWidth * 0.11459,
            // width: 45,
          ),
          Padding(
            padding: EdgeInsets.all(_screenWidth * 0.0203),
            // padding: const EdgeInsets.all(8.0),
            child: Container(
              width: _screenWidth * 0.56,
              // width: 220, // TODO: Change width according to screen size
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
                boxShadow: <BoxShadow>[
                  new BoxShadow(
                    color: Color(0x77000000),
                    blurRadius: 5.0,
                    offset: new Offset(5.0, 5.0),
                  ),
                ],
              ),
              child: Card(
                color: colorOfCard,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                      _screenWidth * 0.03, _screenHeight * 0.00958, 0.0, 0.0),
                  // padding: const EdgeInsets.fromLTRB(12.0, 8.0, 0.0, 0.0),
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
                            fontSize: _screenHeight * 0.0239,
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
                            fontSize: _screenHeight * 0.01437,
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
