import 'package:flutter/material.dart';

class Imagen extends StatelessWidget {
  const Imagen({super.key});

  @override
  Widget build(BuildContext context) {
    //container con una imagen de un tamaño concreto (en caso de ser necesaria para más imágenes se podría hacer por parámetros)
    return Container(
      height: 604,
      width: 374,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/instagramLayout.png"),
          fit: BoxFit.fill,
        ),
      ),
    );
  }}