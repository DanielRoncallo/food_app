// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class InfoProducto extends StatefulWidget {
  const InfoProducto({Key? key}) : super(key: key);

  // ignore: use_key_in_widget_constructors

  @override
  InfoProductoState createState() => InfoProductoState();
}
//botones no funcionan
class InfoProductoState extends State<InfoProducto> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'Small';
    return Container(
      margin: EdgeInsets.all(5),
      width: 342,
      height: 84,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: 342,
                height: 33,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  color: Color(0xffc4c4c4),
                ),
              ),
            ),
          ),
          Positioned(
            left: 14,
            top: 60,
            child: SizedBox(
              width: 52,
              height: 15,
              child: Text(
                "size",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Positioned(
            left: 6,
            top: 6,
            child: SizedBox(
              width: 161,
              height: 13,
              child: Text(
                "Nombre producto",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Positioned(
            left: 7,
            top: 25,
            child: SizedBox(
              width: 127,
              height: 20,
              child: Text(
                "Tiempo entrega",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 11,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Positioned(
            left: 76,
            top: 45,
            child: SizedBox(
              width: 81,
              height: 40,
              child: DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                style: const TextStyle(color: Colors.deepPurple),
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['Small', 'Mediun', 'Large', 'Xlarge']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
          Positioned(
            left: 238,
            top: 61,
            child: SizedBox(
              width: 44,
              height: 14,
              child: Text(
                "\$x.0",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 9,
                ),
              ),
            ),
          ),
          Positioned(
            left: 275,
            top: 48,
            child: SizedBox(
              width: 17,
              height: 10,
              child: IconButton(
                icon: const Icon(Icons.remove),
                iconSize: 20,
                color: Colors.red,
                onPressed: () {},
              ),
            ),
          ),
          Positioned(
            left: 303,
            top: 52,
            child: SizedBox(
              width: 18,
              height: 20,
              child: Text(
                "x",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Positioned(
            left: 305,
            top: 47,
            child: SizedBox(
              width: 18,
              height: 13,
              child: IconButton(
                icon: const Icon(Icons.add),
                iconSize: 20,
                color: Colors.red,
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
