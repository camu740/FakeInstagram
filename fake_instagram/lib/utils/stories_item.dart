import 'package:flutter/material.dart';

import 'espaciado.dart';

class StoriesItem extends StatelessWidget {
  final String text;
  final String image;

  const StoriesItem({super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      //margen alrededor de la historia
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            //tamaño de la historia
            Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    //imagen que debe usar esa historia
                      image: AssetImage("assets/images/$image"),
                      fit: BoxFit.cover),
                  shape: BoxShape.circle,
                  color: Colors.grey[400]),
            ),
            //espacio entre la foto y el texto
            const Espaciado(num: 10.0,),
            //texto de la historia
            Text(text),
          ],
        ));
  }
}
