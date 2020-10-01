import 'package:flutter/material.dart';
import 'package:flutter_covid_asistencia/src/dialogs/progress_dialog.dart';
import 'package:flutter_covid_asistencia/src/utils/utils.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _crearFondo(context),
          _crearLoginForm(context),
        ],
      ),
    );
  }

  Widget _crearFondo(BuildContext context){
    final size = MediaQuery.of(context).size;
    final fondoMoradoDegrade = Container(
      height: size.height * 0.4,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: <Color>[
              Color.fromRGBO(212, 19, 19, 1.0),
              //Colors.red,
              Color.fromRGBO(113, 96, 96, 1.0),
            ],
          )
      ),
    );

    final circulo = Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          shape: BoxShape.circle
        //borderRadius: BorderRadius.circular(50),
      ),
    );

    final logo = Container(
      padding: EdgeInsets.only(top: 75.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(Icons.add_alarm, color: Colors.white, size: 120.0),
          SizedBox(height: 10.0, width: double.infinity),
          Text("ASISTENCIA COVID", style: TextStyle(color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold))
        ],
      ),
    );

    return Stack(
      children: <Widget>[
        fondoMoradoDegrade,
        Positioned( top: 90.0, left: 30.0, child: circulo),
        Positioned( top: -40.0, right: -30.0, child: circulo),
        Positioned( bottom: -50.0, right: -10.0, child: circulo),
        Positioned( bottom: 80.0, right: 20.0, child: circulo),
        Positioned( bottom: -50.0, left: -20.0, child: circulo),
        logo,
      ],
    );
  }

  Widget _crearLoginForm( BuildContext context ){
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container( height: 220.0,),
            Container(
              width: size.width * 0.85,
              margin: EdgeInsets.symmetric(vertical: 30.0),
              padding: EdgeInsets.symmetric(vertical: 50.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 3.0,
                        offset: Offset(0.0, 5.0),
                        spreadRadius: 3.0
                    )
                  ]
              ),
              child: Column(
                children: <Widget>[
                  Text("INGRESAR DNI", style: TextStyle(fontSize: 20)),
                  SizedBox(height: 60.0),
                  _userTextField(),
                  SizedBox(height: 30.0),
                  _passwordTextField(),
                  SizedBox(height: 30.0),
                  _crearBotonIngresar(context),
                ],
              ),
            ),
            SizedBox( height: 30.0,)
          ],
        ),
      ),
    );
  }

  Widget _userTextField() {
    return Container(
      padding: EdgeInsets.symmetric( horizontal: 20),
      child: TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          icon: Icon(Icons.account_circle, color: Colors.deepOrange,),
          hintText: "Usuario",
          labelText: "Ingresar DNI",
          //counterText:
        ),
      ),
    );
  }

  Widget _passwordTextField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          icon: Icon(Icons.lock, color: Colors.deepOrangeAccent,),
          labelText: "Contraseña",
          //counterText
        ),
      ),
    );
  }

  Widget _crearBotonIngresar(BuildContext context){
    return RaisedButton(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 80,vertical: 15),
        child: Text("INGRESAR"),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)
      ),
      color: Colors.red,
      textColor: Colors.white,
      onPressed: (){
        _login(context);
      },
    );
  }

  void _login( BuildContext context ) async{
    ProgressDialog _progressDialog = new ProgressDialog(context);
    _progressDialog.show();
    //Código de validación LOGUEO
    _progressDialog.hide();
    //Verificación del LOGUEO
    if ( true ){
      Navigator.pushReplacementNamed(context, "home");
    } else {
      //showAlertDialog(context, info['message']);
      print("Algo salio mal");
    }
  }
}
