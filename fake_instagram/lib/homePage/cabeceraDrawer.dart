import 'package:flutter/material.dart';

class CabeceraDrawer extends StatelessWidget {
  const CabeceraDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const DrawerHeader(
      decoration: BoxDecoration(
          color: Color(0xff192f58),
          image: DecorationImage(
              image: AssetImage("assets/images/cabeceraDrawer.png"),
              fit: BoxFit.cover)),
      child: Text(
        'Menú',
        style: TextStyle(fontFamily: 'Cinzel',
            fontWeight: FontWeight.bold, fontSize: 17, color: Color(0xffDAB598)),
        textAlign: TextAlign.left,
      ),
    );
  }
}
