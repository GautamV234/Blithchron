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
    return InkWell(
      onTap: () {
        if (routeName != 'None') {
          // Navigator.push
        }
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
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
                height: 5,
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: colorOfCard,
              child: Column(
                children: [
                  Text(
                    eventName,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 23,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    eventDescription,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
