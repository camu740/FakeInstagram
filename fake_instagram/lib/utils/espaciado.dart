import 'package:flutter/material.dart';

class Espaciado extends StatelessWidget {
  //atributos
  final double num;

  //constructor
  const Espaciado({super.key, required this.num});

  @override
  Widget build(BuildContext context) {
    //devuelve un espacio del tamaño del numero
    return SizedBox(
      height: num,
    );
  }}