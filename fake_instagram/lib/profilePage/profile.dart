import 'package:fake_instagram/profilePage/posts.dart';
import 'package:fake_instagram/profilePage/stories.dart';
import 'package:fake_instagram/profilePage/tabbBar.dart';
import 'package:flutter/material.dart';
import 'header.dart';

class ProfileView extends StatelessWidget {
  ProfileView({super.key});

  //atributos
  final String _publicaciones = '2.047';
  final String _seguidores = '65k';
  final String _seguidos = '1.060';
  final List storiesName = [
    "País Vasco",
    "Andalucía",
    "Cataluña",
    "Asturias",
    "Extremadura",
    "C.Valenciana"
  ];
  final List storiesImage = [
    "inguma.png",
    "cancón.png",
    "fumera.png",
    "guaxa.png",
    "pantaruja.png",
    "quarantamaula.png"
  ];
  final List<Map<String, String>> postList = [
    {
      'image': 'assets/images/irati.png',
    },
    {
      'image': 'assets/images/casaOlentzero.png',
    },
    {
      'image': 'assets/images/desfiladeroXanas.png',
    },
    {
      'image': 'assets/images/drach.png',
    },
    {
      'image': 'assets/images/medulas.png',
    },
    {
      'image': 'assets/images/orrius.png',
    },
    {
      'image': 'assets/images/pindo.png',
    },
    {
      'image': 'assets/images/soportujar.png',
    },
    {
      'image': 'assets/images/yedra.png',
    },
    {
      'image': 'assets/images/covadonga.png',
    },
    {
      'image': 'assets/images/albarracin.png',
    },
  ];
  final List<Map<String, String>> tagList = [
    {
      'image': 'assets/images/peladits.png',
    },
    {
      'image': 'assets/images/fumera.png',
    },
    {
      'image': 'assets/images/guaxa.png',
    },
    {
      'image': 'assets/images/Tragantia.png',
    },
    {
      'image': 'assets/images/tio_camuñas.png',
    },
    {
      'image': 'assets/images/olentzero.png',
    },
    {
      'image': 'assets/images/cancón.png',
    },
    {
      'image': 'assets/images/inguma.png',
    },
    {
      'image': 'assets/images/quarantamaula.png',
    },
    {
      'image': 'assets/images/pantaruja.png',
    },
  ];

  //principal
  @override
  Widget build(BuildContext context) {
    //usamos una tabla con controlador para que las publicaciones sean scrolleables
    return DefaultTabController(
      //tenemos dos pestañas (publicaciones y etiquetadas)
        length: 2,
        child: Scaffold(
          body: Column(
            children: [
              //header (perfil, biografía, etc.)
              Header(publicaciones: _publicaciones, seguidores: _seguidores, seguidos: _seguidos,),
              //Stories (lista de historias destacadas)
              Stories(storiesName: storiesName, storiesImage: storiesImage),
              //tabBar (barra de etiquetadas/publicaciones)
              TabbBar(),
              //publicaciones/etiquetadas
              Posts(postList, tagList),
            ],
          ),
        ));
  }
}
