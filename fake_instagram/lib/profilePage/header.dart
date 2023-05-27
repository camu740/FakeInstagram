import 'package:fake_instagram/profilePage/profileImage.dart';
import 'package:flutter/material.dart';

import 'biography.dart';

class Header extends StatelessWidget {
  //atributos
  final String publicaciones;
  final String seguidores;
  final String seguidos;

  //constructor
  const Header({super.key, required this.publicaciones, required this.seguidores, required this.seguidos});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0, bottom: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //profile image
              ProfileImage(),
              //biografia
              Biography(publicaciones: publicaciones, seguidos: seguidos, seguidores: seguidores,),
            ],
          ),
        ),
      ],
    );
  }}