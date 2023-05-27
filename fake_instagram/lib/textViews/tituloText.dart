import 'package:flutter/material.dart';

class TituloText extends StatelessWidget {
  //atributos
  final String texto;

  //constructor
  const TituloText({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    //en caso de que lo necesitemos con diferentes tipografias o diferentes tamaños se podria hacer por parámetros
    return Text(
      texto,
      style: const TextStyle(
          fontFamily: 'Cinzel',
          fontSize: 40.0,
          fontWeight: FontWeight.w500,
          color: Color(0xff192f58)),
      textAlign: TextAlign.center,
    );
  }
}
