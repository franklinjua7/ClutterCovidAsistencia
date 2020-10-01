import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DatosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Datos Personales"),
      ),
      body: Center(
        child: Text("Mostrar los datos personales del Paciente"),
      ),
    );
  }
}
