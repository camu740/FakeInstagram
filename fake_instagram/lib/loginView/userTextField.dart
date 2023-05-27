import 'package:flutter/material.dart';

class UserTextField extends StatelessWidget {
  const UserTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            icon: Icon(
              Icons.email,
              color: Color(0xff192f58),
            ),
            //texto que aparece encima del campo cuando escribes
            hintText: "ejemplo@email.com",
            hintStyle: TextStyle(color: Colors.blueGrey),
            //texto que aparece en el campo antes de tocarlo
            labelText: "Correo Electrónico",
            labelStyle: TextStyle(color: Color(0xff192f58)),
          ),
          onChanged: (value) {},
        ),
      );
    });
  }
}
