import 'dart:async';
import 'dart:convert';
import 'package:flutter_covid_asistencia/src/models/doctor/pacientes_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_covid_asistencia/src/models/doctor/paciente_model.dart';

class PacientesProvider{
  String _apiKey = '73b1ff78b474855754c471f6af0b4c77';
  String _urlBase = 'api.themoviedb.org';
  String _language = 'es-ES';
  int _popularPage = 1;
  bool _cargando = false;

  List<Paciente> _populares = new List();

  final _popularesStreamController = StreamController<List<Paciente>>.broadcast();
  Function(List<Paciente>) get popularesSink => _popularesStreamController.sink.add;
  Stream<List<Paciente>> get popularesStream => _popularesStreamController.stream;

  void disposeStream(){
    _popularesStreamController?.close();
  }

  Future<List<Paciente>> getPacientes() async{
    final url = Uri.https( _urlBase, '3/person/popular',{
      'api_key' : _apiKey,
      'language': _language,
      'page' : _popularPage.toString()
    });

    return _procesarListaPacientes(url);
  }

  Future<List<Paciente>> _procesarListaPacientes(Uri url) async{
    final response = await http.get(url);
    final decodeData = json.decode(response.body);
    print("RESPONSE BOY");
    print(response.body);
    final pacientes = Pacientes.fromJsonList(decodeData['results']);
    return pacientes.items;
  }
}