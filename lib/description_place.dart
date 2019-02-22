import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    final star =Container (
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFF2C611),
      ),
    );
    
    final title_starts = Row(
      children: <Widget>[
      Container(
        margin: EdgeInsets.only(
          top: 320.0,
          left:  20.0,
          right: 20.0
        ),
        child: Text(
          "Duwili Ella",
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
        ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            star
          ],
          )
      ],
    );
 final description = Container(
      margin: EdgeInsets.only(
        top:15.0,
        left: 20.0,
        right: 20.0
      ),
      child: Text(
        "Hoy 09/02/2019 estoy haciendo mis primeros pininos 'pasos' con FLUTTER y PLATZI. Estamos agregando nuestros primerosn widgets con Titulo, Icons y Descriptcion.\n\nProbe Ionic 4 y veo que la documentación esta muy mal ordenada. Espero que pronto lo solucionen ya que es complicado migrar del ionic 3 al 4.",
        textAlign: TextAlign.left,
        style: TextStyle(
          color: Colors.grey
        ),
      ),
    );
    final content_places = Column(
      children: <Widget>[
        title_starts,
        description
      ],
    );
    return content_places;
  }
}
