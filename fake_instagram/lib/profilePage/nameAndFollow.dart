import 'package:flutter/material.dart';
import '../utils/followButton.dart';

class NameAndFollow extends StatelessWidget {
  const NameAndFollow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            children: const [
              Text(
                "Camu740  ",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                ),
              ),
              //boton seguir
              ClipRect(
                child: SizedBox(
                  height: 20,
                  width: 80,
                  child: ButtonClass(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
