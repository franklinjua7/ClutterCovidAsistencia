import 'package:flutter/material.dart';
import 'package:flutter_covid_asistencia/src/pages/login_page.dart';
import 'file:///C:/Users/Android/FlutterProjectAsistencia/flutter_covid_asistencia/lib/src/pages/home/home_page.dart';

Map<String, WidgetBuilder> getRoutesMaterial() => {
  "login" : (BuildContext context) => LoginPage(),
  "home" : (BuildContext context) => HomePage(),
};