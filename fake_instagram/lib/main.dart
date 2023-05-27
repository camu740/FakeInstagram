import 'package:flutter/material.dart';
import 'loginView/login.dart';

//inicializador de la aplicación
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //inicia abriendo la ventana de login
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MitologíaIbéricaApp',
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
    );
  }
}