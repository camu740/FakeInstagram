import 'package:flutter/material.dart';

class TableImages extends StatelessWidget {
  //atributos
  List<Map<String, String>> userPosts = [];
  //constructor
  TableImages(this.userPosts, {super.key});

  @override
  Widget build(BuildContext context) {
    //matriz desplazable
    return GridView.builder(
      //cantidad de items igual a la longitud de la lista de imagenes a mostrar
      itemCount: userPosts.length,
      gridDelegate:
          //maximo 3 elementos por fila
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        //iteramos la lista de imagenes para crear una publicacion por cada una
        final post = userPosts[index];
        return Padding(
          padding: const EdgeInsets.all(5.0),
          child: Image.asset(
            post['image']!,
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
