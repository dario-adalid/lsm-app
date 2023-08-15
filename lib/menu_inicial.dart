import 'package:flutter/material.dart';
import 'package:mobile_app/shared.dart';
import './style.dart';
import 'menu_diccionario.dart';
import 'menu_niveles.dart';

class MenuInicial extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    final ButtonStyle diccionarioButtonStyle = ElevatedButton.styleFrom(
      backgroundColor: LsmColors.color5,
      foregroundColor: Colors.black,
      shape: LinearBorder(),
      maximumSize: Size(350, 80),
      minimumSize: Size(250, 60),
      );

    final ButtonStyle leccionesButtonStyle = ElevatedButton.styleFrom(
      backgroundColor: LsmColors.color3,
      foregroundColor: Colors.black,
      shape: LinearBorder(),
      maximumSize: Size(350, 80),
      minimumSize: Size(250, 60),);

    return Scaffold(
      appBar: Shared.appBar,
      body: Column(
        children: [
          Center(
            heightFactor: 3.5,
            child: Text("LSM APP", textScaleFactor: 3),
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: ElevatedButton(
              style: diccionarioButtonStyle,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => MenuDiccionario()));
              }, 
              child: Text("Diccionario", textScaleFactor: 2.5,),
              ),
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: ElevatedButton(
              style: leccionesButtonStyle,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => MenuNiveles()));
                }, 
              child: Text("Lecciones", textScaleFactor: 2.5,),
              ),
          ),
      ]),
    );
  }

}