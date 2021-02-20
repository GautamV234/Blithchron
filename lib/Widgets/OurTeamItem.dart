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
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(2.0),
        child: Container(
          // height: 40, // Unable to set the size of item from here
          // width: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
            color: Color(0xff26292e),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 70, // Change
                width: 70,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(300.0),
                  child: Image.asset(
                    logoUrl,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 4.0, 0, 0),
                child: Text(
                  name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14, // Change
                  ),
                ),
              ),
              SizedBox(
                height: 2, // Change
              ),
              Text(
                department,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10, // Change
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
