import 'package:flutter/material.dart';
import 'package:flutter_github/page/login_page.dart';

class NavigatorUtils {
  
  // static goHome(BuildContext context) {
  //   Navigator.pushReplacementNamed(context, HomePage.sName);
  // }

   static goLogin(BuildContext context) {
    Navigator.pushReplacementNamed(context, LoginPage.sName);
  }
}