import 'package:flutter/material.dart';

class CategoriaCupon extends StatefulWidget {
  final String pathe;
 
  // ignore: use_key_in_widget_constructors
  const CategoriaCupon({required this.pathe});

  @override
  CategoriaCuponState createState() => CategoriaCuponState();
}

class CategoriaCuponState extends State<CategoriaCupon> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Image.asset(
            widget.pathe,
            fit: BoxFit.cover,
          ),
        ),
         
      ],
    );
  }
}
