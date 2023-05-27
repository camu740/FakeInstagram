import 'package:flutter/material.dart';

class Parrafo extends StatelessWidget {
  //atributos
  final String texto;

  //constructor
  const Parrafo({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    //en caso de que lo necesitemos con diferentes tipografias o diferentes tamaños se podria hacer por parámetros
    return Text(
      texto,
      style: const TextStyle(
          fontFamily: 'PoiretOne',
          fontSize: 18.0,
          fontWeight: FontWeight.w900,
          color: Color(0xff192f58)),
      textAlign: TextAlign.center,
    );
  }
}
