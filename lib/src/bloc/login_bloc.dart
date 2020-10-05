import 'package:flutter_covid_asistencia/src/bloc/validators.dart';
import 'package:flutter_covid_asistencia/src/providers/usuario_provider.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';

class LoginBloc with Validators{
  final _usuarioController = BehaviorSubject<String>();
  final _claveController = BehaviorSubject<String>();
  final _usuarioProvider = UsuarioProvider();

  //Insertar valores al Stream
  Function(String) get changeUsuario => _usuarioController.sink.add;
  Function(String) get changeClave => _claveController.sink.add;

  //Recuperamos los datos del Stream
  Stream<String> get usuarioStream  => _usuarioController.stream.transform(validarUsuario);
  Stream<String> get claveStream => _claveController.stream.transform(validarClave);

  //Validar el formulario
  Stream<bool> get formValidStream => Rx.combineLatest2(usuarioStream, claveStream, (a, b) => true);
  Stream<bool> get concatenarUsuarioClave => Rx.combineLatest2(usuarioStream, claveStream, (a, b) => a + " " + b);

  //Obtener el último valor ingresado en los Stream
  String get usuario  => _usuarioController.value;
  String get clave => _claveController.value;

  //Eliminamos el Stream
  dispose(){
    _usuarioController?.close();
    _claveController?.close();
  }

  //Limpiamos el formulario
  void cleanUsuarioClave(){
    changeUsuario("");
    changeClave("");
  }

  //LLAMAMOS AL PROVIDER
  Future<Map<String, dynamic>> createUsuario() async{
    return _usuarioProvider.createUsuario(usuario, clave);
  }

  Future<Map<String, dynamic>> loginUsuario() async{
    return _usuarioProvider.loginUsuario(usuario, clave);
  }

}