import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:klipning/src/pages/detallesLocal.dart';
import 'package:klipning/src/pages/home.dart';
import 'package:klipning/src/pages/items_servicio.dart';
import 'package:klipning/src/pages/login.dart';
import 'package:klipning/src/pages/principal.dart';
import 'package:klipning/src/pages/register.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Color.fromRGBO(241, 238, 238, 1.0),
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark
    ));
    SystemChrome.setPreferredOrientations([ //Evita que no se rote la pantalla
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Klipning',
      initialRoute: 'principal',
      routes: {
        'principal' : (BuildContext context) =>PrincipalPage(),
        'login'     : (BuildContext context) =>LoginPage(),
        'registro'  : (BuildContext context) =>RegisterPage(),
        'home'  : (BuildContext context) =>HomePage(),
        'itemsServicio': (BuildContext context) =>ItemServicioPage(),
        'informacionNegocio': (BuildContext context) => InformacionNegocio()


      },
      );
  }
}