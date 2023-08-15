import 'package:flutter/material.dart';
import 'package:mobile_app/lecciones.dart';
import 'package:mobile_app/menu_nivel.dart';
import 'package:mobile_app/shared.dart';
import 'package:mobile_app/style.dart';

// final lecciones = [
//   Lecciones("Leccion 1", Tema("Abcdario", temas: [
//     Sena(nombre: "A"), 
//     Sena(nombre: "B"),
//     Sena(nombre: "C"),
//     Sena(nombre: "Z     ")])),
//   Lecciones("Leccion 2", Tema("Colores", temas: [
//     Sena(nombre: "Verde"),
//     Sena(nombre: "Azul"),
//     Sena(nombre: "Blanco"),
//     Sena(nombre: "Morado"),
//     Sena(nombre: "Rojo"),
//     Sena(nombre: "Claro"),
//     Sena(nombre: "Obscuro")
//   ])),
//   Lecciones("Leccion 3", Tema("Colores", temas: [
//     Sena(nombre: "Verde"),
//     Sena(nombre: "Azul"),
//     Sena(nombre: "Blanco"),
//     Sena(nombre: "Morado"),
//     Sena(nombre: "Rojo"),
//     Sena(nombre: "Claro"),
//     Sena(nombre: "Obscuro")
//   ])),
//   Lecciones("Leccion 4", Tema("Colores", temas: [
//     Sena(nombre: "Verde"),
//     Sena(nombre: "Azul"),
//     Sena(nombre: "Blanco"),
//     Sena(nombre: "Morado"),
//     Sena(nombre: "Rojo"),
//     Sena(nombre: "Claro"),
//     Sena(nombre: "Obscuro")
//   ])),
//   Lecciones("Leccion 5", Tema("Colores", temas: [
//     Sena(nombre: "Verde"),
//     Sena(nombre: "Azul"),
//     Sena(nombre: "Blanco"),
//     Sena(nombre: "Morado"),
//     Sena(nombre: "Rojo"),
//     Sena(nombre: "Claro"),
//     Sena(nombre: "Obscuro")
//   ])),
//   Lecciones("Leccion 6", Tema("Colores", temas: [
//     Sena(nombre: "Verde"),
//     Sena(nombre: "Azul"),
//     Sena(nombre: "Blanco"),
//     Sena(nombre: "Morado"),
//     Sena(nombre: "Rojo"),
//     Sena(nombre: "Claro"),
//     Sena(nombre: "Obscuro")
//   ])),
//   Lecciones("Leccion 7", Tema("Colores", temas: [
//     Sena(nombre: "Verde"),
//     Sena(nombre: "Azul"),
//     Sena(nombre: "Blanco"),
//     Sena(nombre: "Morado"),
//     Sena(nombre: "Rojo"),
//     Sena(nombre: "Claro"),
//     Sena(nombre: "Obscuro")
//   ])),
//   Lecciones("Leccion 8", Tema("Colores", temas: [
//     Sena(nombre: "Verde"),
//     Sena(nombre: "Azul"),
//     Sena(nombre: "Blanco"),
//     Sena(nombre: "Morado"),
//     Sena(nombre: "Rojo"),
//     Sena(nombre: "Claro"),
//     Sena(nombre: "Obscuro")
//   ])),
//   Lecciones("Leccion 9", Tema("Colores", temas: [
//     Sena(nombre: "Verde"),
//     Sena(nombre: "Azul"),
//     Sena(nombre: "Blanco"),
//     Sena(nombre: "Morado"),
//     Sena(nombre: "Rojo"),
//     Sena(nombre: "Claro"),
//     Sena(nombre: "Obscuro")
//   ])),
//   Lecciones("Leccion 10", Tema("Colores", temas: [
//     Sena(nombre: "Verde"),
//     Sena(nombre: "Azul"),
//     Sena(nombre: "Blanco"),
//     Sena(nombre: "Morado"),
//     Sena(nombre: "Rojo"),
//     Sena(nombre: "Claro"),
//     Sena(nombre: "Obscuro")
//   ])),
//   Lecciones("Leccion 11", Tema("Colores", temas: [
//     Sena(nombre: "Verde"),
//     Sena(nombre: "Azul"),
//     Sena(nombre: "Blanco"),
//     Sena(nombre: "Morado"),
//     Sena(nombre: "Rojo"),
//     Sena(nombre: "Claro"),
//     Sena(nombre: "Obscuro")
//   ])),
//   Lecciones("Leccion 12", Tema("Colores", temas: [
//     Sena(nombre: "Verde"),
//     Sena(nombre: "Azul"),
//     Sena(nombre: "Blanco"),
//     Sena(nombre: "Morado"),
//     Sena(nombre: "Rojo"),
//     Sena(nombre: "Claro"),
//     Sena(nombre: "Obscuro")
//   ])),
//   Lecciones("Leccion 13", Tema("Colores", temas: [
//     Sena(nombre: "Verde"),
//     Sena(nombre: "Azul"),
//     Sena(nombre: "Blanco"),
//     Sena(nombre: "Morado"),
//     Sena(nombre: "Rojo"),
//     Sena(nombre: "Claro"),
//     Sena(nombre: "Obscuro")
//   ])),
//   Lecciones("Leccion 14", Tema("Colores", temas: [
//     Sena(nombre: "Verde"),
//     Sena(nombre: "Azul"),
//     Sena(nombre: "Blanco"),
//     Sena(nombre: "Morado"),
//     Sena(nombre: "Rojo"),
//     Sena(nombre: "Claro"),
//     Sena(nombre: "Obscuro")
//   ])),
//   Lecciones("Leccion 15", Tema("Colores", temas: [
//     Sena(nombre: "Verde"),
//     Sena(nombre: "Azul"),
//     Sena(nombre: "Blanco"),
//     Sena(nombre: "Morado"),
//     Sena(nombre: "Rojo"),
//     Sena(nombre: "Claro"),
//     Sena(nombre: "Obscuro")
//   ])),
//   Lecciones("Leccion 16", Tema("Colores", temas: [
//     Sena(nombre: "Verde"),
//     Sena(nombre: "Azul"),
//     Sena(nombre: "Blanco"),
//     Sena(nombre: "Morado"),
//     Sena(nombre: "Rojo"),
//     Sena(nombre: "Claro"),
//     Sena(nombre: "Obscuro")
//   ]))
// ];

final ButtonStyle leccionButtonStyle = ElevatedButton.styleFrom(
      backgroundColor: LsmColors.color3,
      foregroundColor: Colors.black,
      shape: LinearBorder(),
      maximumSize: Size(350, 80),
      minimumSize: Size(250, 60),
      );

class MenuLecciones extends StatelessWidget{

  final String name;
  final List<Lecciones> lecciones;

  final TextStyle nameTextStyle = TextStyle(
    backgroundColor: LsmColors.color3,
    color: Colors.black,
    fontSize: 32,
  );

  MenuLecciones(this.name, this.lecciones);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Shared.appBar,
      body: Center(
        child: ListView(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                    name, 
                    style: nameTextStyle,
                 ),
              ),
            ),
            for(Lecciones leccion in lecciones)
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: ElevatedButton(
                  style: leccionButtonStyle,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MenuNivel(leccion)));
                  },
                  child: Center(
                    heightFactor: 3,
                    child: Text(leccion.leccionName, textScaleFactor: 2,),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }

}

