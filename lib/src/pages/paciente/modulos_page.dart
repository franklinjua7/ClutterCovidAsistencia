import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_covid_asistencia/src/pages/home/componentes/appBody.dart';

class ModulosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MÓDULOS DEL PACIENTE"),
      ),
      body: AppBarBody(context)
    );
  }
}
