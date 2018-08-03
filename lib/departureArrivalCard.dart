import 'package:flutter/material.dart';

class DepartureArrivalCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:20.0,horizontal: 8.0),
      child: Card(
        elevation: 3.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical:15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'DXB',
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.black54,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:4.0),
                    child: Icon(Icons.airplanemode_active,color: Colors.pink.withAlpha(100),size:15.0),
                  ),
                  Text(
                    'SFO',
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.black54,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                ],
              ),
              Container(
                width: 2.0,
                height: 50.0,
                color: const Color(0xFFEEEEEEE)
              ),
              TripleTextVerticalAligned(
                firstText: 'Departure Time',
                secondText: '10:00',
                thirdText: 'Thursday',
              ),
              Container(
                  width: 2.0,
                  height: 50.0,
                  color: const Color(0xFFEEEEEEE)
              ),
              TripleTextVerticalAligned(
                firstText: 'Arrival Time',
                secondText: '22:00',
                thirdText: 'Friday',
              )
            ],
          ),
        ),
      ),
    );
  }
}



class TripleTextVerticalAligned extends StatelessWidget {
  String firstText;
  String secondText;
  String thirdText;

  TripleTextVerticalAligned({
    this.secondText='',
    this.firstText ='',
    this.thirdText = '',
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          firstText,
          style: TextStyle(
            color: Colors.black54,
            fontSize: 14.0,
            fontWeight: FontWeight.w500
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical:5.0),
          child: Text(
            secondText,
            style: TextStyle(
              color: Colors.black26,
              fontSize: 12.5,
            ),
          ),
        ),
        Text(
          thirdText,
          style: TextStyle(
            color: Colors.black26,
            fontSize: 12.5,
          ),
        ),
      ],
    );
  }
}
