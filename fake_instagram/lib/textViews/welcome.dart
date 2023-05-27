import 'package:fake_instagram/textViews/parrafo.dart';
import 'package:fake_instagram/textViews/tituloText.dart';
import 'package:fake_instagram/utils/enlaceNavegable.dart';
import 'package:flutter/material.dart';
import '../utils/espaciado.dart';
import 'imagen.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: Color(0xffeecfb7)),
        //lista deslizable
        child: ListView(
          children: [
            Column(
              //centramos en la pantalla
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Espaciado(
                  num: 40.0,
                ),
                TituloText(
                  texto: '¡Bienvenido a Mitología Ibérica App!',
                ),
                Espaciado(
                  num: 40.0,
                ),
                Parrafo(
                    texto:
                        "Esta aplicación es un proyecto desarrollado para la asignatura de Programación Multimedia y Dispositivos Móviles en 2º de Grado Superior de Desarrollo de Aplicaciones Multiplataforma estudiado en IES Pablo Picasso (Málaga)."),
                Espaciado(
                  num: 40.0,
                ),
                Parrafo(
                    texto:
                        "El objetivo es replicar una captura de instagram que podéis ver más abajo. \n\nTambién podéis encontrar un manual de uso de la aplicación en el siguiente enlace:\n"),
                EnlaceNavegable(
                    texto: 'Manual de uso para el usuario.',
                    url:
                        "https://drive.google.com/file/d/14fg_kRPLGEEr1jGiOBUiqCmSIj87iyX-/view?usp=sharing",
                    size: 17),
                Espaciado(
                  num: 40.0,
                ),
                Parrafo(
                    texto:
                        "Podéis acceder al resto de ventanas de la aplicación pulsando en el icono de 'hamburguesa' de la esquina superior derecha y seleccionando posteriormente la ventana a la que queréis dirigiros."),
                Espaciado(
                  num: 40.0,
                ),
                Parrafo(
                    texto:
                        "Aquí podeis ver la imagen que he tratado de replicar en estructura, aunque no en contenido."),
                Espaciado(
                  num: 40.0,
                ),
                Imagen(),
                Espaciado(
                  num: 40.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
