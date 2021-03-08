import 'package:flutter/material.dart';

class CampusAdvisorScreen extends StatelessWidget {
  static const routeName = '\CampusAdvisorScreen';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 1000,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Campus Ambassador",
              style: TextStyle(
                foreground: Paint()..shader = linearGradient,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "BECOME A CAMPUS AMBASSADOR TODAY!",
              style: TextStyle(
                foreground: Paint()..shader = linearGradient,
              ),
            ),
            Row(
              children: [
                RaisedButton(
                  onPressed: () {},
                  child: Text("Register"),
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text("Terms and Conditions"),
                ),
              ],
            ),
            Card(
              child: Container(
                child: Column(
                  children: [
                    Text("About the program"),
                    Text(
                        "Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum"),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                child: Column(
                  children: [
                    Text("What will you be doing?"),
                    Text("A"),
                    Text("B"),
                    Text("C"),
                    Text("D"),
                    Text("E"),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                child: Column(
                  children: [
                    Text("What will you gain?"),
                    Text("A"),
                    Text("B"),
                    Text("C"),
                    Text("D"),
                    Text("E"),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                child: Column(
                  children: [
                    Text("Incentives"),
                    Text("A"),
                    Text("B"),
                    Text("C"),
                    Text("D"),
                    Text("E"),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                child: Column(
                  children: [
                    Text("Questions?"),
                    Row(
                      children: [
                        Icon(Icons.phone),
                        Text("Rishita:123456789"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.mail_outline),
                        Text("blithchron@iitgn.ac.in"),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
