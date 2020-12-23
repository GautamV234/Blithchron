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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 40,
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
                height: 10,
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
            width: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: colorOfCard,
              child: Container(
                width: 200, // TODO: Change width according to screen size
                child: Column(
                  children: [
                    Text(
                      eventName,
                      style: TextStyle(
                        fontFamily: 'Raleway',
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
                        fontFamily: 'Raleway',
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
