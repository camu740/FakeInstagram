import 'package:flutter/material.dart';
import '../homePage/homepage.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return MaterialButton(
        //forma del boton
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)),
        elevation: 10.0,
        color: const Color(0xff192f58),
        //al pulsarlo cambiamos de ventana
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage())),
        //container con el texto
        child: Container(
          padding: const EdgeInsets.symmetric(
              horizontal: 80.0, vertical: 15.0),
          child: const Text(
            'Iniciar Sesión',
            style: TextStyle(
                fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      );
    });

  }}
