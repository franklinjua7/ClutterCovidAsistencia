import 'package:flutter/material.dart';
import 'package:flutter_covid_asistencia/src/models/usuario_model.dart';
import 'package:flutter_covid_asistencia/src/pages/doctor/lista_paciente_page.dart';
import 'package:flutter_covid_asistencia/src/pages/doctor/ubicacion_paciente_page.dart';
import 'package:flutter_covid_asistencia/src/pages/home/componentes/appBars.dart';
import 'package:flutter_covid_asistencia/src/pages/paciente/datos_page.dart';
import 'package:flutter_covid_asistencia/src/pages/paciente/modulos_page.dart';
import 'package:flutter_covid_asistencia/src/pages/paciente/noticias_page.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Usuario usuario = ModalRoute.of(context).settings.arguments;
    print('CUI');
    print(usuario.cui);
    return Scaffold(
      appBar: fullAppbar(context),
      body:  usuario.cui % 2==0 ?_llamarPaginasPaciente(_currentIndex) : _llamarPaginasDoctor(_currentIndex),
      bottomNavigationBar: usuario.cui % 2==0 ? _crearBottomNavigatorBarPaciente(): _crearBottomNavigatorBarDoctor(),
    );
  }

  Widget _llamarPaginasPaciente( int paginaActual ){
    switch( paginaActual ){
      case 0: return DatosPage();
      case 1: return ModulosPage();
      case 2: return NoticiasPage();
      default: return ModulosPage();
    }
  }

  Widget _llamarPaginasDoctor( int paginaActual){
    switch( paginaActual ){
      case 0: return ListaPacientePage();
      case 1: return UbicacionPacientePage();
      default: return ListaPacientePage();
    }
  }

  Widget _crearBottomNavigatorBarPaciente(){
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index){
        setState((){
          _currentIndex = index;
        });
      },
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.perm_contact_calendar),
          title: Text("Datos")
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.apps),
          title: Text("Modulos")
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.next_week),
          title: Text("Noticias")
        )
      ],
    );
  }

  Widget _crearBottomNavigatorBarDoctor(){
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index){
        setState(() {
          _currentIndex = index;
        });
      },
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.format_list_numbered),
          title: Text("Lista de Pacientes")
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.gps_fixed),
          title: Text("Ubicación de Pacientes")
        ),
      ],
    );
  }
}
