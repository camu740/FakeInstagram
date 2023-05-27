import 'package:fake_instagram/textViews/parrafo.dart';
import 'package:fake_instagram/textViews/tituloText.dart';
import 'package:fake_instagram/utils/enlaceNavegable.dart';
import 'package:flutter/material.dart';
import '../utils/espaciado.dart';

class CreditsView extends StatelessWidget {
  const CreditsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //container adaptable al tamaño de la pantalla
      body: Container(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: Color(0xffeecfb7)),
        //hacemos que toda la pantalla sea deslizable
        child: ListView(
          children: [
            //usamos una unica columna de elementos
            Column(
              //alineamos al centro
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Espaciado(
                  num: 40.0,
                ),
                TituloText(
                  texto: 'Créditos',
                ),
                Espaciado(
                  num: 40.0,
                ),
                Parrafo(texto: "Desarrollado por: "),
                EnlaceNavegable(
                  texto: "Adrián Cámara Muñoz",
                  url: "https://twitter.com/adriancamara740",
                  size: 16.0,
                ),
                Espaciado(
                  num: 40.0,
                ),
                Parrafo(texto: "Repositorio del proyecto: "),
                EnlaceNavegable(
                    texto: "FakeInstagram",
                    url: "https://github.com/AdrianCaMu/FakeInstagram",
                    size: 16.0),
                Espaciado(num: 40.0),
                Parrafo(texto: "Gracias por probar la aplicación."),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
