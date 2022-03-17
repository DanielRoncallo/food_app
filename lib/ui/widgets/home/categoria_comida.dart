import 'package:flutter/material.dart';

class CategoriaComida extends StatefulWidget {
  final String pathe;
  final String tipo;
  // ignore: use_key_in_widget_constructors
  const CategoriaComida({required this.pathe, required this.tipo});

  @override
  CategoriaComidaState createState() => CategoriaComidaState();
}

class CategoriaComidaState extends State<CategoriaComida> {
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
        Positioned(
          // The Positioned widget is used to position the text inside the Stack widget
          child: Container(
            // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
            color: Colors.black54,
            padding: const EdgeInsets.all(10),
            child: Text(
              widget.tipo,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
