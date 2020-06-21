import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:klipning/src/pages/home.dart';
import 'package:klipning/src/pages/login.dart';
import 'package:klipning/src/pages/principal.dart';
import 'package:klipning/src/pages/register.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: ( Platform.isAndroid ) ? Colors.transparent : Colors.transparent,
      statusBarIconBrightness: Brightness.dark
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Klipning',
      initialRoute: 'principal',
      routes: {
        'principal' : (BuildContext context) =>PrincipalPage(),
        'login'     : (BuildContext context) =>LoginPage(),
        'registro'  : (BuildContext context) =>RegisterPage(),
        'home'  : (BuildContext context) =>HomePage()

      },
      );
  }
}