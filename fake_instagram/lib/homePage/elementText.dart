import 'package:flutter/material.dart';

class ElementText extends StatelessWidget {
  //atributos
  final String name;

  //constructor
  const ElementText({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(
          fontWeight: FontWeight.bold, color: Color(0xff192f58), fontSize: 15),
    );
  }}