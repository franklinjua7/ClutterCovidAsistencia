import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class NoticiasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Noticias Coronavirus"),
      ),
      body: Center(
        child: Text("Mostrar los consejos, noticias, publicaciones o articulos acerca del Covid 19"),
      ),
    );
  }
}
