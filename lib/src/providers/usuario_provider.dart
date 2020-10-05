import 'dart:convert';
import 'dart:io';
import 'package:flutter_covid_asistencia/src/shared_prefs/preferencias_usuario.dart';
import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';

class UsuarioProvider{
  final _prefs = new PreferenciasUsuario();
  String _urlBase = 'https://api.reniec.cloud/dni/';

  Future<Map<String, dynamic>> createUsuario(String usuario, String clave) async{
    return {'ok':true, 'token': true};
  }

  Future<Map<String, dynamic>> loginUsuario(String usuario, String clave) async{
    String urlDni = _urlBase+usuario;
    //try{
      final ioc = new HttpClient();
      ioc.badCertificateCallback = ((X509Certificate cert, String host, int port) => true);
      final http = new IOClient(ioc);
      final response = await http.post(urlDni,body:{});
      print("Reponse status : ${response.statusCode}");
      print("Response body : ${response.body}");
      var responseBody = jsonDecode(response.body);
      print("responseBody");
      print(responseBody);
      if ( responseBody != null ){
        String nombreCompleto = responseBody["apellido_paterno"]+' '+responseBody["apellido_materno"]+' '+responseBody["nombres"];
        String cui = responseBody["cui"].toString();
        return {'ok':true, 'cui':cui, 'nombreCompleto':nombreCompleto};
      } else {
        print("False");
        return {'ok':false , 'message': 'El DNI ingresado no existe'};
      }
  }
  /*Future<Map<String, dynamic>> loginUsuario(String usuario, String clave) async{
    final authData = {};
    final response = await http.post(_urlBase+usuario,body:json.encode(authData));

    Map<String,dynamic> decodeResp = json.decode(response.body);
    HttpClient client = new HttpClient();
    client.badCertificateCallback = ((X509Certificate cert, String host, int port) => true);
    String urlDni = _urlBase+usuario;
    Map map = {
      "dni" : "dni" ,
      "cui" : "cui",
      "apellido_paterno" : "apellido_paterno",
      "apellido_materno" : "apellido_materno",
      "nombres" : "nombres"
    };
    HttpClientRequest request = await client.postUrl(Uri.parse(urlDni));
    //request.headers.set('content-type', 'application/json');
    Map<String,dynamic> decodeResp = json.decode(request.toString());
    request.add(utf8.encode(json.encode(map)));
    HttpClientResponse response = await request.close();
    //Stream<String> reply = await response.transform(utf8.decoder);
    var reply = await response.transform(utf8.decoder).listen((data) {
      print("DATA");
      print(data);
    });
    //Map<String,dynamic> decodeResp = json.decode(response.body);

    if( reply != null){
      //String nombreCompleto = reply['apellido_paterno'].toString();
    } else {
      return {'ok':false, 'message' : 'Número de DNI incorrecto.'};
    }
    return null;
  }*/
}