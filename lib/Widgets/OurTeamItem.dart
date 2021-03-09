import 'package:flutter/material.dart';

class OurTeamItem extends StatelessWidget {
  final String name;
  final String department;
  final String logoUrl;

  /// url of that animated faces images
  OurTeamItem({
    @required this.name,
    @required this.department,
    @required this.logoUrl,
  });
  @override
  Widget build(BuildContext context) {
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
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.fromLTRB(
            _screenWidth * 0.00509,
            _screenHeight * 0.00239,
            _screenWidth * 0.00509,
            _screenHeight * 0.00239),
        child: Container(
          // height: 40, // Unable to set the size of item from here
          // width: 20,
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: _screenHeight * 0.0838, // Change
                width: _screenWidth * 0.17825,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(300.0),
                  child: Image.asset(
                    logoUrl,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, _screenHeight * 0.00479, 0, 0),
                child: Text(
                  name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: _screenHeight * 0.01676, // Change
                  ),
                ),
              ),
              SizedBox(
                height: _screenHeight * 0.00239, // Change
              ),
              Text(
                department,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: _screenHeight * 0.01197, // Change
                  letterSpacing: 1, // Change
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
