import 'package:flutter/material.dart';
import 'package:mobile_app/lecciones.dart';
import 'package:mobile_app/sena.dart';
import 'package:mobile_app/sena_vista.dart';
import 'package:mobile_app/shared.dart';
import 'package:mobile_app/style.dart';

class MenuNivel extends StatelessWidget{

  final ButtonStyle temaButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: LsmColors.color5,
    foregroundColor: Colors.black,
    shape: LinearBorder(),
    maximumSize: Size(350, 80),
    minimumSize: Size(250, 60)
  );

  final Lecciones leccion;

  MenuNivel(this.leccion);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Shared.appBar,
      body: Column(
        children: [
          for(Sena sena in leccion.tema.temas)
            Padding(
              padding: const EdgeInsets.all(12),
              child: ElevatedButton(
                style: temaButtonStyle,
                onPressed: () => {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SenaVista(sena)))
                },
                child: Center(
                  heightFactor: 2,
                  child: Text(sena.nombre, textScaleFactor: 1.5,),
                  ),
              ),
              )
        ]
        ),
    );
  }

}