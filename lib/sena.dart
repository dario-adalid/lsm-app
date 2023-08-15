import 'package:flutter/material.dart';

class Sena{
  static const String noDescripcion = "No hay descripción disponible";
  static const Placeholder noVideo = Placeholder();
  final String nombre;
  final String descripcion;
  final Placeholder video;

  Sena({required this.nombre, this.descripcion = noDescripcion, this.video = noVideo});
}