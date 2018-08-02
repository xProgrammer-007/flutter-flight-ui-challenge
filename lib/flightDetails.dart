import 'package:flutter/material.dart';
import 'appbar.dart';
import 'main.dart';

class FlightDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
          child:Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top:10.0),
                      child: Icon(Icons.airplanemode_active,color: Colors.pink.withAlpha(100),size:35.0),
                    ),
                    FourTextVerticalAligned(
                      firstText: 'From',
                      secondText: 'USD 4500',
                      thirdText: '4 passengers',
                      fourthText: 'Average Price',
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FlutterLogo(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            BigAndSmallText(
                                firstText: '12',
                                secondText: 'hrs',
                                fontSize: 15.0,
                                smallFontSize:10.0
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:15.0),
                              child: BigAndSmallText(
                                firstText: '45',
                                fontSize: 15.0,
                                smallFontSize:10.0,
                                secondText: 'min',
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top:25.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          FlutterLogo(),
                          Padding(
                            padding: const EdgeInsets.only(top:6.0),
                            child: Text(
                              'EK204',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 14.0,
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            'DXB - SFO',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 15.0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:8.0),
                            child: Text(
                              'A380 800',
                              style: TextStyle(
                                color: Colors.black26,
                                fontSize: 14.0,
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            '10:00 - 08:00',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:8.0),
                            child: Text(
                              'Duration 22hrs 45mins',
                              style: TextStyle(
                                color: Colors.black26,
                                fontSize: 12.0,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}
