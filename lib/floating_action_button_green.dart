import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  // Creando el esatdo
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }

}

// Declarando el estado
class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  // cambiar estado de boton vacio a relleno
  bool state= false;
  void onPressedFav(){
     setState(() {
      state = !state;
    });
    Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text("Agregaste a tus Favoritos"),
        )
    );
  }
// UI
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      //Metodo Clic
      onPressed: onPressedFav,
       child: Icon(
        state?Icons.favorite:Icons.favorite_border
      ),
    );
  }

}