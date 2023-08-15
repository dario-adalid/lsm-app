import 'package:flutter/material.dart';
import 'package:mobile_app/sena.dart';
import 'package:mobile_app/shared.dart';
import 'package:mobile_app/style.dart';

class SenaVista extends StatelessWidget{

  final Sena sena;

  SenaVista(this.sena);

  final TextStyle nombreStyle = TextStyle(
              color: LsmColors.color4,
              fontSize: 25,
              );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Shared.appBar,
      body: Column(
        children: [
          Center(
            child: Text(
              sena.nombre,
              style: nombreStyle,
              ),
          ),
          SizedBox(
            height: 250,
            width: 380,
            child: sena.video,
          ),
          Text(sena.descripcion)
        ],
      ),
    );
  }

}