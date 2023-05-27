import 'package:flutter/material.dart';

class Estadisticas extends StatelessWidget {
  //atributos
  final String publicaciones;
  final String seguidores;
  final String seguidos;

  //constructor
  const Estadisticas({super.key, required this.publicaciones, required this.seguidores, required this.seguidos});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          publicaciones,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        ),
        const Text(
          ' publicaciones ',
          style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12),
        ),
        Text(
          seguidores,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        ),
        const Text(
          ' seguidores ',
          style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12),
        ),
        Text(
          seguidos,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        ),
        const Text(
          ' seguidos ',
          style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12),
        ),
      ],
    );
  }}