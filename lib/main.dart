import 'package:flutter/material.dart';
import 'file:///C:/Users/Android/FlutterProjectAsistencia/flutter_covid_asistencia/lib/src/pages/home/home_page.dart';
import 'package:flutter_covid_asistencia/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Asistencia Covid',
      initialRoute: "login",
      routes: getRoutesMaterial(),
      onGenerateRoute: (RouteSettings settings){
        return MaterialPageRoute(builder: (BuildContext context) => HomePage());
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
