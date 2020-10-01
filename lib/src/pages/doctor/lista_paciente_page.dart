import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ListaPacientePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Pacientes"),
      ),
      body: Center(
        child: Text("Lista de pacientes cargados"),
      ),
    );
  }
}
