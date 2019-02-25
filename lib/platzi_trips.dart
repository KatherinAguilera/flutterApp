import 'package:flutter/material.dart';
import 'home_trips.dart';
import 'search_trips.dart';
import 'profile_trips.dart';

class PlatziTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PlatziTrips();
  }

}

class _PlatziTrips extends State<PlatziTrips> {
  // Lista de elemento que permite mostrar de acuerdo al tap seleccionado
  int indexTap = 0;
  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];
// Declarando estado para el tap (menu)
  void onTapTapped(int index){
    // controlar el estado del widget
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // Colocar el contenido de los taps
    return  Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          // indice que permite pasar lo que selecciono en el tap
          currentIndex: indexTap,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  title: Text("")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  title: Text("")
              ),
            ]
        ),
      ),
    );
  }

}