import 'package:flutter/material.dart';
import 'package:mobile_app/menu_lecciones.dart';
import 'package:mobile_app/nivel.dart';
import 'package:mobile_app/sena.dart';
import 'package:mobile_app/shared.dart';
import 'package:mobile_app/style.dart';
import 'package:mobile_app/tema.dart';

import 'lecciones.dart';

final lecciones = [
  Lecciones("Leccion 1", Tema("Abcdario", temas: [
    Sena(nombre: "A"), 
    Sena(nombre: "B"),
    Sena(nombre: "C"),
    Sena(nombre: "Z     ")])),
  Lecciones("Leccion 2", Tema("Colores", temas: [
    Sena(nombre: "Verde"),
    Sena(nombre: "Azul"),
    Sena(nombre: "Blanco"),
    Sena(nombre: "Morado"),
    Sena(nombre: "Rojo"),
    Sena(nombre: "Claro"),
    Sena(nombre: "Obscuro")
  ])),
  Lecciones("Leccion 3", Tema("Colores", temas: [
    Sena(nombre: "Verde"),
    Sena(nombre: "Azul"),
    Sena(nombre: "Blanco"),
    Sena(nombre: "Morado"),
    Sena(nombre: "Rojo"),
    Sena(nombre: "Claro"),
    Sena(nombre: "Obscuro")
  ])),
  Lecciones("Leccion 4", Tema("Colores", temas: [
    Sena(nombre: "Verde"),
    Sena(nombre: "Azul"),
    Sena(nombre: "Blanco"),
    Sena(nombre: "Morado"),
    Sena(nombre: "Rojo"),
    Sena(nombre: "Claro"),
    Sena(nombre: "Obscuro")
  ])),
  Lecciones("Leccion 5", Tema("Colores", temas: [
    Sena(nombre: "Verde"),
    Sena(nombre: "Azul"),
    Sena(nombre: "Blanco"),
    Sena(nombre: "Morado"),
    Sena(nombre: "Rojo"),
    Sena(nombre: "Claro"),
    Sena(nombre: "Obscuro")
  ])),
  Lecciones("Leccion 6", Tema("Colores", temas: [
    Sena(nombre: "Verde"),
    Sena(nombre: "Azul"),
    Sena(nombre: "Blanco"),
    Sena(nombre: "Morado"),
    Sena(nombre: "Rojo"),
    Sena(nombre: "Claro"),
    Sena(nombre: "Obscuro")
  ])),
  Lecciones("Leccion 7", Tema("Colores", temas: [
    Sena(nombre: "Verde"),
    Sena(nombre: "Azul"),
    Sena(nombre: "Blanco"),
    Sena(nombre: "Morado"),
    Sena(nombre: "Rojo"),
    Sena(nombre: "Claro"),
    Sena(nombre: "Obscuro")
  ])),
  Lecciones("Leccion 8", Tema("Colores", temas: [
    Sena(nombre: "Verde"),
    Sena(nombre: "Azul"),
    Sena(nombre: "Blanco"),
    Sena(nombre: "Morado"),
    Sena(nombre: "Rojo"),
    Sena(nombre: "Claro"),
    Sena(nombre: "Obscuro")
  ])),
  Lecciones("Leccion 9", Tema("Colores", temas: [
    Sena(nombre: "Verde"),
    Sena(nombre: "Azul"),
    Sena(nombre: "Blanco"),
    Sena(nombre: "Morado"),
    Sena(nombre: "Rojo"),
    Sena(nombre: "Claro"),
    Sena(nombre: "Obscuro")
  ])),
  Lecciones("Leccion 10", Tema("Colores", temas: [
    Sena(nombre: "Verde"),
    Sena(nombre: "Azul"),
    Sena(nombre: "Blanco"),
    Sena(nombre: "Morado"),
    Sena(nombre: "Rojo"),
    Sena(nombre: "Claro"),
    Sena(nombre: "Obscuro")
  ])),
  Lecciones("Leccion 11", Tema("Colores", temas: [
    Sena(nombre: "Verde"),
    Sena(nombre: "Azul"),
    Sena(nombre: "Blanco"),
    Sena(nombre: "Morado"),
    Sena(nombre: "Rojo"),
    Sena(nombre: "Claro"),
    Sena(nombre: "Obscuro")
  ])),
  Lecciones("Leccion 12", Tema("Colores", temas: [
    Sena(nombre: "Verde"),
    Sena(nombre: "Azul"),
    Sena(nombre: "Blanco"),
    Sena(nombre: "Morado"),
    Sena(nombre: "Rojo"),
    Sena(nombre: "Claro"),
    Sena(nombre: "Obscuro")
  ])),
  Lecciones("Leccion 13", Tema("Colores", temas: [
    Sena(nombre: "Verde"),
    Sena(nombre: "Azul"),
    Sena(nombre: "Blanco"),
    Sena(nombre: "Morado"),
    Sena(nombre: "Rojo"),
    Sena(nombre: "Claro"),
    Sena(nombre: "Obscuro")
  ])),
  Lecciones("Leccion 14", Tema("Colores", temas: [
    Sena(nombre: "Verde"),
    Sena(nombre: "Azul"),
    Sena(nombre: "Blanco"),
    Sena(nombre: "Morado"),
    Sena(nombre: "Rojo"),
    Sena(nombre: "Claro"),
    Sena(nombre: "Obscuro")
  ])),
  Lecciones("Leccion 15", Tema("Colores", temas: [
    Sena(nombre: "Verde"),
    Sena(nombre: "Azul"),
    Sena(nombre: "Blanco"),
    Sena(nombre: "Morado"),
    Sena(nombre: "Rojo"),
    Sena(nombre: "Claro"),
    Sena(nombre: "Obscuro")
  ])),
  Lecciones("Leccion 16", Tema("Colores", temas: [
    Sena(nombre: "Verde"),
    Sena(nombre: "Azul"),
    Sena(nombre: "Blanco"),
    Sena(nombre: "Morado"),
    Sena(nombre: "Rojo"),
    Sena(nombre: "Claro"),
    Sena(nombre: "Obscuro")
  ]))
];


final niveles = [
  Nivel("Nivel 1", lecciones),
  Nivel("Nivel 2", lecciones),
  Nivel("Nivel 3", lecciones),
  Nivel("Nivel 4", lecciones),
  Nivel("Nivel 5", lecciones),
  Nivel("Nivel 6", lecciones),
  Nivel("Nivel 7", lecciones),
  Nivel("Nivel 8", lecciones),
  Nivel("Nivel 9", lecciones),
  Nivel("Nivel 10", lecciones),
  Nivel("Nivel 11", lecciones),
  Nivel("Nivel 12", lecciones),
  Nivel("Nivel 13", lecciones),
  Nivel("Nivel 14", lecciones),
];

final ButtonStyle nivelButtonStyle = ElevatedButton.styleFrom(
      backgroundColor: LsmColors.color3,
      foregroundColor: Colors.black,
      shape: LinearBorder(),
      maximumSize: Size(350, 80),
      minimumSize: Size(250, 60),
      );

class MenuNiveles extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Shared.appBar,
      body: Center(
        child: ListView(
          children: [
            for(Nivel nivel in niveles)
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: ElevatedButton(
                  style: nivelButtonStyle,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MenuLecciones(nivel.name, nivel.lecciones)
                      ));
                  },
                  child: Center(
                    heightFactor: 3,
                    child: Text(nivel.name, textScaleFactor: 2,),
                  ),
                ),
              )
          ],
        )
        ),
    );
  }


}