import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_github/store/state.dart';
import 'package:flutter_github/page/welcome_page.dart';

class FlutterReduxApp extends StatefulWidget {
  FlutterReduxApp({Key key}) : super(key: key);

  @override
  _FlutterReduxAppState createState() => _FlutterReduxAppState();
}

class _FlutterReduxAppState extends State<FlutterReduxApp> {
  final store = Store(
    appReducer,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        WelcomePage.sName: (context) {
          return WelcomePage();
        }
      },
    );
  }
}
