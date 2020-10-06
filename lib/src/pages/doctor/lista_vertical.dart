import 'package:flutter/cupertino.dart';
import 'package:flutter_covid_asistencia/src/models/doctor/paciente_model.dart';

class ListaVertical extends StatelessWidget{
  final List<Paciente> pacientes;

  ListaVertical({Key key, this.pacientes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: PageView.builder(
        pageSnapping: false,
          controller: PageController(
            viewportFraction: 0.32,
            initialPage: 1
          ),
          itemBuilder: (context, index){
            return Column(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: FadeInImage(
                    image: NetworkImage(pacientes[index].getProfilePath()),
                    placeholder: AssetImage("images/no-image.jpg"),
                    height: 150.0,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            );
          }
      ),
    );
  }
  
}