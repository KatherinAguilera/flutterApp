import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {

  // Pasar datos dinamicamente mediante un constructor
  String namePlace;
  int starts;
  String descriptionPlace;
  // Colocar parametro en mai.dart DescriptionPlace
  DescriptionPlace(this.namePlace, this.starts, this.descriptionPlace);

  @override
  Widget build(BuildContext context){
     final star_half =Container (
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFF2C611),
      ),
    );
    final star_border =Container (
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFF2C611),
      ),
    );
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
          namePlace,
          style: TextStyle(
            fontFamily: "Lato",
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
            star_border
          ],
          )
      ],
    );
    final description = Container(
          margin: EdgeInsets.only(
            top: 20.0,
            left: 20.0,
            right: 20.0
          ),
          child: Text(
            descriptionPlace,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 16.0,
              // fontWeight: FontWeight.bold,
              color: Color(0xFF56575a)
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
