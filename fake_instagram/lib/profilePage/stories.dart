import 'package:flutter/material.dart';
import '../utils/stories_item.dart';

class Stories extends StatelessWidget {
  //atributos
  final List storiesName ;
  final List storiesImage ;

  //constructor
  const Stories({super.key, required this.storiesName, required this.storiesImage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      //lista infinita de forma horizontal
      width: double.infinity,
      child: ListView.builder(
        //desplazable de forma horizotal
          scrollDirection: Axis.horizontal,
          shrinkWrap: false,
          //tantas historias como nombres de historias tengamos (valdria tambien con el numero de imagenes)
          itemCount: storiesName.length,
          itemBuilder: (context, index) {
            return StoriesItem(
              text: storiesName[index],
              image: storiesImage[index],
            );
          }),
    );
  }}