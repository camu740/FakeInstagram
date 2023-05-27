import 'package:flutter/material.dart';

class TabbBar extends StatelessWidget {
  const TabbBar({super.key});

  @override
  Widget build(BuildContext context) {
    //tabla con dos filas, publicaciones y etiquetadas
    return TabBar(
      tabs: [
        Row(
          children: const [
            Icon(
              Icons.grid_3x3_outlined,
              size: 20.0,
            ),
            SizedBox(width: 5),
            Text(
              'PUBLICACIONES',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12.0,
              ),
            ),
          ],
        ),
        Row(
          children: const [
            Icon(
              Icons.label,
              size: 20.0,
            ),
            SizedBox(width: 5),
            Text(
              'ETIQUETADAS',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),
            ),
          ],
        ),
      ],
      isScrollable: true,
    );
  }}