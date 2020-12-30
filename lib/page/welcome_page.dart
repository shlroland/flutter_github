import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key key}) : super(key: key);

  static final String sName = "/";

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Stack(
          children: <Widget>[
            Center(
              child: Image(
                image: AssetImage('static/images/welcome.png'),
              ),
            ),
            Align(
              alignment: Alignment(0.0, 0.3),
              child: Text('child'),
            ),
            Align(
              alignment: Alignment(0.0, 0.8),
              child: Text('Mole'),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 200,
                height: 200,
                child: Text('flutter logo'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
