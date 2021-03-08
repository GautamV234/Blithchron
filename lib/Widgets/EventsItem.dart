import 'package:flutter/material.dart';

class EventsItem extends StatelessWidget {
  final String eventName;
  final String eventRuleBook;
  final String eventRegister;
  final String eventImage;
  EventsItem({
    @required this.eventName,
    @required this.eventRuleBook,
    @required this.eventRegister,
    @required this.eventImage,
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
    return SafeArea(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: _screenHeight * 0.26949,
          width: _screenWidth * 0.5729,
          decoration: BoxDecoration(
            color: Colors.grey.shade800,
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
            // image: DecorationImage(
            //   fit: BoxFit.cover,
            //   image: AssetImage(this.eventImage), //Event Image to be added
            // )
          ),
        ),
        SizedBox(height: _screenHeight * 0.014372),
        Text(
          this.eventName,
          style: TextStyle(
            color: Colors.white,
            fontSize: _screenHeight * 0.01676,
          ),
        ),
        SizedBox(height: _screenHeight * 0.014372),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: _screenHeight * 0.03593,
              width: _screenWidth * 0.25464,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.yellow[700])),
              transform: Matrix4.skewX(-0.4),
              child: InkWell(
                onTap: () {}, //RULE BOOK LINK
                child: Center(
                  child: Transform(
                    transform: Matrix4.skewX(0.4),
                    child: Text(
                      'Rule Book  ', // space --- intentional
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: _screenHeight * 0.01676,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: _screenWidth * 0.05092),
            Container(
              height: _screenHeight * 0.03593,
              width: _screenWidth * 0.25464,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.yellow[700])),
              transform: Matrix4.skewX(-0.4),
              child: InkWell(
                onTap: () {},
                child: Center(
                  child: Transform(
                    transform: Matrix4.skewX(0.4),
                    child: Text(
                      'Register  ', // space --- intentional
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: _screenHeight * 0.01676,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: _screenHeight * 0.03593),
      ],
    ));
  }
}
