import 'package:flutter/material.dart';

//stalefulWidget ya que debe detectar cuando se pulsa el botón para cambiar el estado del mismo
class ButtonClass extends StatefulWidget {
  const ButtonClass({Key? key}) : super(key: key);

  @override
  _ButtonClassState createState() => _ButtonClassState();
}

class _ButtonClassState extends State<ButtonClass> {
  //atributos por defecto
  var buttonText = 'Seguir';
  var buttonColor = Colors.blue;
  var textColor = Colors.white;
  bool _siguiendo = false;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
          //cada vez que se pulsa comprobamos el estado en el que estaba y lo cambiamos
            onPressed: () {
              if (_siguiendo) {
                _siguiendo = false;
                //cambiamos texto, color del texto y fondo del botón
                setState(() {
                  buttonText = 'Seguir';
                  buttonColor = Colors.blue;
                  textColor = Colors.white;
                });
              } else {
                _siguiendo = true;
                //cambiamos texto, color del texto y fondo del botón
                setState(() {
                  buttonText = 'Siguiendo';
                  buttonColor = Colors.grey;
                  textColor = Colors.black;
                });
              }
            },
            style: ButtonStyle(
              //usamos esto para que el tamaño no varíe al cambiar la longitud del texto, ajustandolo al de mayor longitud("Siguiendo")
                fixedSize: MaterialStateProperty.all(const Size(78, 5)),
                //usamos variables para lo que puede cambiarse del boton al pulsarlo
                backgroundColor: MaterialStateProperty.all<Color>(buttonColor)),
            child: Text(buttonText, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10, color: textColor),)));
  }
}
