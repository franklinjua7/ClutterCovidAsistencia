import 'package:flutter/material.dart';
import 'package:flutter_covid_asistencia/src/utils/colors.dart';

Widget AppBarBody(BuildContext context){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10),
    width: MediaQuery.of(context).size.width,
    child: CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) => Container(
                margin: EdgeInsets.only(left: 10, top: 15, bottom: 0),
                child: Text(
                  'Aplicaciones',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: CustomColors.TextSubHeader),
                ),
              ),
              childCount: 1),
        ),
        SliverGrid.count(
          crossAxisCount: 2,
          children: [
            Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          width: 65,
                          height: 65,
                          child: Image.asset('assets/images/icon-user.png'),
                          decoration: const BoxDecoration(
                            color: CustomColors.YellowBackground,
                            borderRadius: BorderRadius.all(
                              Radius.circular(50.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Citas Medicas',
                        style: TextStyle(
                            fontSize: 17,
                            color: CustomColors.TextHeaderGrey,
                            fontWeight: FontWeight.w600),
                      ),

                      SizedBox(height: 8),
                      Text(
                        '02 Notificaciones',
                        style: TextStyle(
                            fontSize: 9,
                            color: CustomColors.TextSubHeaderGrey),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: CustomColors.GreyBorder,
                      blurRadius: 10.0,
                      spreadRadius: 5.0,
                      offset: Offset(0.0, 0.0),
                    ),
                  ],
                  color: Colors.white,
                ),
                margin: EdgeInsets.all(10),
                height: 150.0),
            Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 65,
                        height: 65,
                        child: Image.asset('assets/images/icon-briefcase.png'),
                        decoration: const BoxDecoration(
                          color: CustomColors.GreenBackground,
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Oximetro',
                        style: TextStyle(
                            fontSize: 17,
                            color: CustomColors.TextHeaderGrey,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '03 Notificaciones',
                        style: TextStyle(
                            fontSize: 9,
                            color: CustomColors.TextSubHeaderGrey),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: CustomColors.GreyBorder,
                      blurRadius: 10.0,
                      spreadRadius: 5.0,
                      offset: Offset(0.0, 0.0),
                    ),
                  ],
                  color: Colors.white,
                ),
                margin: EdgeInsets.all(10),
                height: 150.0),
            Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 65,
                        height: 65,
                        child: Image.asset('assets/images/icon-presentation.png'),
                        decoration: const BoxDecoration(
                          color: CustomColors.PurpleBackground,
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Encuesta',
                        style: TextStyle(
                            fontSize: 17,
                            color: CustomColors.TextHeaderGrey,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '05 por completar',
                        style: TextStyle(
                            fontSize: 9,
                            color: CustomColors.TextSubHeaderGrey),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: CustomColors.GreyBorder,
                      blurRadius: 10.0,
                      spreadRadius: 5.0,
                      offset: Offset(0.0, 0.0),
                    ),
                  ],
                  color: Colors.white,
                ),
                margin: EdgeInsets.all(10),
                height: 150.0),
            Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 65,
                        height: 65,
                        child: Image.asset('assets/images/icon-shopping-basket.png'),
                        decoration: const BoxDecoration(
                          color: CustomColors.OrangeBackground,
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Seccion Noticias',
                        style: TextStyle(
                            fontSize: 17,
                            color: CustomColors.TextHeaderGrey,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '02 Nuevas',
                        style: TextStyle(
                            fontSize: 9,
                            color: CustomColors.TextSubHeaderGrey),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: CustomColors.GreyBorder,
                      blurRadius: 10.0,
                      spreadRadius: 5.0,
                      offset: Offset(0.0, 0.0),
                    ),
                  ],
                  color: Colors.white,
                ),
                margin: EdgeInsets.all(10),
                height: 150.0),
            Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 65,
                        height: 65,
                        child: Image.asset('assets/images/icon-confetti.png'),
                        decoration: const BoxDecoration(
                          color: CustomColors.BlueBackground,
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Perfil',
                        style: TextStyle(
                            fontSize: 17,
                            color: CustomColors.TextHeaderGrey,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Falta completar datos',
                        style: TextStyle(
                            fontSize: 9,
                            color: CustomColors.TextSubHeaderGrey),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: CustomColors.GreyBorder,
                      blurRadius: 10.0,
                      spreadRadius: 5.0,
                      offset: Offset(0.0, 0.0),
                    ),
                  ],
                  color: Colors.white,
                ),
                margin: EdgeInsets.all(10),
                height: 150.0),
            Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 65,
                        height: 65,
                        child: Image.asset('assets/images/icon-molecule.png'),
                        decoration: const BoxDecoration(
                          color: CustomColors.PurpleBackground,
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Notificaciones',
                        style: TextStyle(
                            fontSize: 17,
                            color: CustomColors.TextHeaderGrey,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '03 Pendientes',
                        style: TextStyle(
                            fontSize: 9,
                            color: CustomColors.TextSubHeaderGrey),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: CustomColors.GreyBorder,
                      blurRadius: 10.0,
                      spreadRadius: 5.0,
                      offset: Offset(0.0, 0.0),
                    ),
                  ],
                  color: Colors.white,
                ),
                margin: EdgeInsets.all(10),
                height: 150.0),
          ],
        ),
      ],
    ),
  );
}