import 'package:flutter/material.dart';
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
    return Scaffold(
      appBar: fullAppbar(context),
      body: _llamarPaginas(_currentIndex),
      bottomNavigationBar: _crearBottomNavigatorBar(),
    );
  }

  Widget _llamarPaginas( int paginaActual ){
    switch( paginaActual ){
      case 0: return DatosPage();
      case 1: return ModulosPage();
      case 2: return NoticiasPage();
      default: return ModulosPage();
    }
  }

  Widget _crearBottomNavigatorBar(){
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
}
