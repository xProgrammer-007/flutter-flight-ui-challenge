import 'package:flutter/material.dart';
import 'appbar.dart';
import 'departureArrivalCard.dart';
import 'flightDetails.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          AppBarCustomCurved(),
          DepartureArrivalCard(),
          FlightDetails(),
          BorderedShadowListTile(
            title: 'Economy Class',
            subtitle: 'Average Price',
            trailing: 'USD 4,500',
            borderColor: Colors.lightBlueAccent,
          ),
          BorderedShadowListTile(
            title: 'Economy Class',
            subtitle: 'Average Price',
            trailing: 'USD 4,500',
            borderColor: Colors.redAccent,
          )
        ],
      )
    );
  }

}


class BorderedShadowListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String trailing;
  final Color borderColor;

  BorderedShadowListTile({
    this.borderColor,
    this.title = '',
    this.subtitle = '',
    this.trailing = ''
  });

  @override
  Widget build(BuildContext context) {
    return  CustomPaint(
      painter: BorderAndShadow(),
      child: CustomPaint(
        painter: BorderAndShadow(
            borderColor: borderColor
        ),
        child: ListTile(
          contentPadding: EdgeInsets.only(left:35.0,right: 20.0),
          title: Text(
           title,
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(
                color: Colors.pink.withAlpha(100),
                fontSize: 12.0,
                decorationStyle: TextDecorationStyle.wavy
            ),
          ),
          trailing: Text(
            trailing,
          ),
        ),
      ),
    );
  }
}




class BorderAndShadow extends CustomPainter{
  Paint borderPaint;
  Path shadowPath;
  Paint shadowPaint;

  final Color borderColor;
  BorderAndShadow({
    this.borderColor:Colors.red
}):shadowPath = new Path(),borderPaint = new Paint(),shadowPaint = new Paint(){
    borderPaint
    ..color = borderColor
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2.5;
    shadowPaint
      ..color = Colors.black
      ..style = PaintingStyle.fill
      ..strokeWidth = 2.0;



  }
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(
        Offset(15.0,15.0),
        Offset(15.0,size.height - 5.0),
        borderPaint
    );
    canvas.clipPath(clipShadow(size));

    canvas.drawShadow(
      getShadowPath(size),
      Colors.black,
      15.0,
      true
    );

  }


  clipShadow(Size size){
    Path clipShadow = new Path();
    clipShadow.addRect(Rect.fromLTWH(0.0,0.0,size.width,size.height + 5.0));
    return clipShadow;
  }

  getShadowPath(Size size){
    shadowPath
     ..addRect(Rect.fromLTWH(15.0, size.height , size.width - 15, 1.0));
    return shadowPath;

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}


class FourTextVerticalAligned extends StatelessWidget {
  String firstText;
  String secondText;
  String thirdText;
  String fourthText;

  FourTextVerticalAligned({
    this.secondText='',
    this.firstText ='',
    this.thirdText = '',
    this.fourthText = ''
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
            color: Colors.black26,
            fontSize: 12.5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical:5.0),
          child: Text(
            secondText,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 14.0,
              fontWeight: FontWeight.w500
            ),
          ),
        ),
        Text(
          thirdText,
          style: TextStyle(
            color: Colors.black26,
            fontSize: 11.5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(Icons.check,color: Colors.pink.withAlpha(100),size:15.0),
              Padding(
                padding: const EdgeInsets.only(left:4.0),
                child: Text(
                  fourthText,
                  style: TextStyle(
                    color: Colors.pink.withAlpha(100),
                    fontSize: 12.5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
