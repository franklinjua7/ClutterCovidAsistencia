import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_covid_asistencia/src/models/doctor/paciente_model.dart';

class PacienteDetallePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final Paciente paciente = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("${paciente.name}"),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate([
              _cabecera(context, paciente),
            ]),
          )
        ],
      ),
    );
  }

  Widget _cabecera(BuildContext context, Paciente paciente) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Row(
        children: <Widget>[
          Hero(
            tag: paciente.id,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image(
                image: NetworkImage(paciente.getProfilePath()),
                height: 150.0,
              ),
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  paciente.knownForDepartment,
                  style: Theme.of(context).textTheme.title,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  paciente.gender == 1 ? "FEMENINO" : "MASCULINO" ,
                  style: Theme.of(context).textTheme.subhead,
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.star_border),
                    Text(
                      paciente.popularity.toString(),
                      style: Theme.of(context).textTheme.subhead,
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
}

}