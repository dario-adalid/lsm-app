import 'package:flutter/material.dart';
import 'package:mobile_app/sena.dart';
import 'package:mobile_app/sena_vista.dart';
import 'package:mobile_app/shared.dart';

final diccionario = [
  Sena(nombre: "abeja"),
  Sena(nombre: "abdomen"),
  Sena(nombre: "adolescente"),
  Sena(nombre: "adulto/adulta"),
  Sena(nombre: "anciana/anciano"),
  Sena(nombre: "barba"),
  Sena(nombre: "bebé"),
  Sena(nombre: "bigote"),
  Sena(nombre: "boca"),
  Sena(nombre: "brazo"),
  Sena(nombre: "caballero"),
  Sena(nombre: "cabello"),
  Sena(nombre: "cabeza"),
  Sena(nombre: "cara"),
  Sena(nombre: "cerebro"),
  Sena(nombre: "codo"),
  Sena(nombre: "dama"),
  Sena(nombre: "dedo"),
  Sena(nombre: "diente"),
  Sena(nombre: "doña/don"),
  Sena(nombre: "espinilla"),
  Sena(nombre: "estómago"),
  Sena(nombre: "gente"),
  Sena(nombre: "hombre"),
  Sena(nombre: "hombro"),
  Sena(nombre: "humanidad"),
  Sena(nombre: "humano"),
  Sena(nombre: "hígado"),
  Sena(nombre: "individuo"),
  Sena(nombre: "labio"),
  Sena(nombre: "mano"),
  Sena(nombre: "mujer"),
  Sena(nombre: "muñeca"),
  Sena(nombre: "músculo"),
  Sena(nombre: "nariz"),
  Sena(nombre: "niña/niño"),
  Sena(nombre: "ojo"),
  Sena(nombre: "orden"),
  Sena(nombre: "papá"),
  Sena(nombre: "perico"),
  Sena(nombre: "piedra"),
  Sena(nombre: "querer"),
  Sena(nombre: "rezar"),
  Sena(nombre: "rojo"),
  Sena(nombre: "salud"),
  Sena(nombre: "septiembre"),
  Sena(nombre: "tren"),
  Sena(nombre: "tuberculo"),
  Sena(nombre: "uva"),
  Sena(nombre: "viuda/viudo"),
  Sena(nombre: "vivir"),
  Sena(nombre: "x"),
  Sena(nombre: "yogurth"),
];

class MenuDiccionario extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Shared.appBar,
      body: Center(
        child: ListView(
          children: [
            Text("Diccionario"),
          
            TextFormField(
              decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Buscar',
                  ),
            ),
            for(Sena palabra in diccionario)
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SenaVista(palabra)));
                  }, 
                  child: Text(palabra.nombre)
                )
          ],
        )
        //   ListView(
        //     children: [
        //       for(Sena palabra in diccionario)
        //         ElevatedButton(
        //           onPressed: () {
        //             Navigator.of(context).push(MaterialPageRoute(builder: (context) => SenaVista(palabra)));
        //           }, 
        //           child: Text(palabra.nombre)
        //         )
        //     ],
        //   )
          
        //] ,
      ),
    );
  }
}