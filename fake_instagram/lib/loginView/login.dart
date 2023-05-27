import 'package:fake_instagram/loginView/passwordTextField.dart';
import 'package:fake_instagram/loginView/userTextField.dart';
import 'package:flutter/material.dart';
import '../utils/espaciado.dart';
import 'buttonLogin.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffDAB598),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //texto flexible para desplazarse hacia arriba al abrirse el teclado
              const Flexible(
                child: Text(
                  'Mitología\nIbérica app',
                  style: TextStyle(
                      fontFamily: 'Cinzel',
                      fontWeight: FontWeight.w600,
                      fontSize: 60.0,
                      color: Color(0xff192f58),
                      ),
                ),
              ),
              const Espaciado(num: 45.0,),
              //campo texto del login
              UserTextField(),
              const Espaciado(num: 25.0,),
              //campo contrasena del login
              PasswordTextField(),
              const Espaciado(num: 35.0,),
              //boton del login
              const ButtonLogin(),
            ],
          ),
        ),
      ),
    );
  }
}
