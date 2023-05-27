import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class EnlaceNavegable extends StatelessWidget {

  //atributos
  final String texto;
  final String url;
  final double size;

  //constructor
  const EnlaceNavegable({super.key, required this.texto, required this.url, required this.size});

  @override
  Widget build(BuildContext context) {
    //detecta cuando se toca
    return GestureDetector(
      //al tocarlo abre el enlace
      onTap: () {
        launchUrlString(
            url);
      },
      //texto a mostrar
      child: Text(
        texto,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: size,
            color: Colors.blue,
            decoration: TextDecoration.underline),
      ),
    );
  }}