import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_map/flutter_map.dart';

class UbicacionPacientePage extends StatefulWidget {
  @override
  _UbicacionPacientePageState createState() => _UbicacionPacientePageState();
}

class _UbicacionPacientePageState extends State<UbicacionPacientePage> {
  final MapController _mapController = new MapController();
  final String _accessToken = "pk.eyJ1IjoicnJvbmRhbiIsImEiOiJja2VtNDJ4a3kwMm9qMnpvenJtMmNhZG85In0.h2Yr59D4fp1CwTRWTDpSFQ";
  String tipoMapa = "streets-v11";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MAPA PACIENTES"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.my_location),
            onPressed: (){
              //_mapController.move(15);
            },
          )
        ],
      ),
      body: _crearFlutterMapa(),
      floatingActionButton: _crearBotonFlotante( context ),
    );
  }

  Widget _crearFlutterMapa(){
    return FlutterMap(
      mapController: _mapController,
      options: new MapOptions(
        center: null,//new LatLng(51.5, -0.09),
        zoom: 13.0,
      ),
      layers: <LayerOptions>[
        _crearMapa(),
        //_crearMarcador(scanModel),
      ],
    );
  }

  _crearMapa(){
    return TileLayerOptions(
        urlTemplate: "https://api.mapbox.com/styles/v1/mapbox/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}",
        additionalOptions: {
          "accessToken": _accessToken,
          "id": tipoMapa
          //streets-v11  outdoors-v11  light-v10  dark-v10  satellite-v9  satellite-streets-v11
        }
    );
  }

  Widget _crearBotonFlotante(BuildContext context){
    return FloatingActionButton(
      child: Icon(Icons.repeat),
      backgroundColor: Theme.of(context).primaryColor,
      onPressed: _cambiarTipoMapa,
    );
  }

  void _cambiarTipoMapa(){
    //streets-v11  outdoors-v11  light-v10  dark-v10  satellite-v9  satellite-streets-v11
    switch(tipoMapa){
      case "streets-v11"          : tipoMapa = "outdoors-v11"; break;
      case "outdoors-v11"         : tipoMapa = "light-v10"; break;
      case "light-v10"            : tipoMapa = "dark-v10"; break;
      case "dark-v10"             : tipoMapa = "satellite-v9"; break;
      case "satellite-v9"         : tipoMapa = "satellite-streets-v11"; break;
      case "satellite-streets-v11": tipoMapa = "streets-v11"; break;
      default: tipoMapa = "streets-v11";
    }
    setState(() { });
  }
}
