import 'package:flutter/material.dart';
import '../utils/enlaceNavegable.dart';
import 'estadisticas.dart';
import 'nameAndFollow.dart';

class Biography extends StatelessWidget {
  //atributos
  final String publicaciones;
  final String seguidores;
  final String seguidos;

  //constructor
  const Biography({super.key, required this.publicaciones, required this.seguidores, required this.seguidos});

  @override
  Widget build(BuildContext context) {
    return Padding(
      //paddig solo arriba y a la izquierda
      padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
      child: Column(
        //alineamos al principio de la pantalla
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Nombre y boton seguir
          NameAndFollow(),
          //estadisticas
          Estadisticas(publicaciones: publicaciones, seguidores: seguidores, seguidos: seguidos,),
          //biografia
          Row(
            children: const [
              Text(
                '\nMitología Ibérica',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
              ),
            ],
          ),
          const Text('Seres y lugares mitológicos'),
          const Text('Leyendas de la mitología española🐲🧜‍♀🦄'),
          const EnlaceNavegable(texto: 'Visita nuestra página web.', url: "https://adriancamu.github.io/", size: 15.0,)
        ],
      ),
    );
  }}