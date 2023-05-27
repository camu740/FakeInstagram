import 'package:flutter/material.dart';
import '../profilePage/profile.dart';
import '../textViews/credits.dart';
import '../textViews/welcome.dart';
import 'cabeceraDrawer.dart';
import 'elementText.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //boton del drawer pulsado
  int _selectedIndex = 0;

  //setear el indice dependiendo del botón pulsado del drawer
  void _navigateOnDrawer(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //lista de paginas por las que navegar con el drawer
  final List<Widget> _pages = [const HomeView(), ProfileView(), const CreditsView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //barra superior
      appBar: AppBar(
          backgroundColor: const Color(0xffDAB598),
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Mitología Ibérica",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Cinzel',
                    fontWeight: FontWeight.w600),
              ),
            ],
          )),
      //menu desplegable
      endDrawer: Drawer(
        backgroundColor: const Color(0xffDAB598),
        child: ListView(
          // quitamos el padding del drawer para que no se muevan los elementos
          padding: EdgeInsets.zero,
          children: [
            //cabecera del drawer
            const CabeceraDrawer(),
            //primer elemento de menu
            ListTile(
              leading: const Icon(
                Icons.home_outlined,
                color: Color(0xff192f58),
              ),
              title: const ElementText(name: 'Home',),
              onTap: () {
                _navigateOnDrawer(0);
                Navigator.pop(context);
              },
            ),
            //segundo elemento de menu
            ListTile(
              leading: const Icon(
                Icons.person,
                color: Color(0xff192f58),
              ),
              title: const ElementText(name: 'Profile',),
              onTap: () {
                _navigateOnDrawer(1);
                Navigator.pop(context);
              },
            ),
            //tercer elemento de menu
            ListTile(
              leading: const Icon(
                Icons.free_breakfast,
                color: Color(0xff192f58),
              ),
              title: const ElementText(name: 'Credits',),
              onTap: () {
                _navigateOnDrawer(2);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      //cambiamos el cuerpo en base al elemento de menu seleccionado
      body: _pages[_selectedIndex],
    );
  }
}
