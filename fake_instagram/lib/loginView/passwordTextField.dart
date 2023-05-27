import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({super.key});


  @override
  Widget build(BuildContext context) {
    return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          //ocultamos el texto al escribirlo
          obscureText: true,
          decoration: const InputDecoration(
            icon: Icon(Icons.lock, color: Color(0xff192f58),),
            //texto que aparece encima del campo cuando escribes
            hintText: "contraseña",
            hintStyle: TextStyle(color: Colors.blueGrey),
            //texto que aparece en el campo antes de tocarlo
            labelText: "Contraseña",
            labelStyle: TextStyle(color: Color(0xff192f58)),
          ),
          onChanged: (value) {},
        ),
      );
    });
  }}