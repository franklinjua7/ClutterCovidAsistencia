import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class UbicacionPacientePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mapa Pacientes"),
      ),
      body: Center(
        child: Text("Se mostrara un mapa con los pacientes cargados que va a visitar"
            "durante el día de hoy."),
      ),
    );
  }
}
