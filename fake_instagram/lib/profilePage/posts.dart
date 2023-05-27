import 'package:flutter/material.dart';
import '../utils/table_images.dart';

class Posts extends StatelessWidget {
  //atributos
  final List<Map<String, String>> postList;
  final List<Map<String, String>> tagList;

  //constructor
  const Posts(this.postList, this.tagList, {super.key});

  @override
  Widget build(BuildContext context) {
    //crea una tabla para las publicaciones y otra para las etiquetadas
    return Expanded(
      child:
          TabBarView(children: [TableImages(postList), TableImages(tagList)]),
    );
  }
}
