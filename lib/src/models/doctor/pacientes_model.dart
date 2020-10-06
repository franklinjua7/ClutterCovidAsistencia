import 'package:flutter_covid_asistencia/src/models/doctor/paciente_model.dart';

class Pacientes{
  List<Paciente> items = new List();

  //Constructor sin parámetros
  Pacientes();

  //Constructor con parámetros
  Pacientes.fromJsonList(List<dynamic> jsonList){
    if( jsonList == null ) return;

    for( var item in jsonList ){
      final pacienteItem = new Paciente.fromJson(item);
      items.add(pacienteItem);
    }
  }
}