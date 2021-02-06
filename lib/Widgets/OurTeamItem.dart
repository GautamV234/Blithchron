import 'package:flutter/material.dart';

class OurTeamItem extends StatelessWidget {
  String name;
  String department;
  String logoUrl;

  /// url of that animated faces images
  OurTeamItem({
    @required this.name,
    @required this.department,
    @required this.logoUrl,
  });
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            ClipRRect(
              child: Image.asset(
                logoUrl,
              ),
            ),
            Text(
              name,
              style: TextStyle(color: Colors.white),
            ),
            Text(
              department,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
