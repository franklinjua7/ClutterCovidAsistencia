import 'package:flutter/material.dart';
import 'package:flutter_covid_asistencia/src/bloc/provider.dart';
import 'package:flutter_covid_asistencia/src/pages/home/home_page.dart';
import 'package:flutter_covid_asistencia/src/pages/login_page.dart';
import 'package:flutter_covid_asistencia/src/routes/routes.dart';
import 'package:flutter_covid_asistencia/src/shared_prefs/preferencias_usuario.dart';

//void main() => runApp(MyApp());
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = PreferenciasUsuario();
  await prefs.initPrefs();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final prefs = PreferenciasUsuario();
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        title: 'Asistencia Covid',
        debugShowCheckedModeBanner: false,
        initialRoute: prefs.token.toString().isEmpty ? "login" : "home",
        routes: getRoutesMaterial(),
        onGenerateRoute: (RouteSettings settings){
          return MaterialPageRoute(builder: (BuildContext context) => HomePage());
        },
      ),
    );
  }
}
