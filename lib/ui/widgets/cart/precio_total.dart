import 'package:flutter/material.dart';

class PrecioTotal extends StatefulWidget {
  // ignore: use_key_in_widget_constructors

  @override
  PrecioTotalState createState() => PrecioTotalState();
}

class PrecioTotalState extends State<PrecioTotal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 342,
      height: 139,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 342,
                height: 49,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                  ),
                  color: Color(0xffc4c4c4),
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 6,
            child: SizedBox(
              width: 59,
              height: 33,
              child: Text(
                "Sub total",
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
            left: 262,
            top: 9,
            child: SizedBox(
              width: 80,
              height: 36,
              child: Text(
                "\$x.0",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                width: 80,
                height: 27,
                child: Text(
                  "\$x.0",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 262,
            top: 84,
            child: SizedBox(
              width: 80,
              height: 27,
              child: Text(
                "\$x.0",
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
            left: 20,
            top: 54,
            child: SizedBox(
              width: 35,
              height: 24,
              child: Text(
                "IVA",
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
            left: 20,
            top: 89,
            child: SizedBox(
              width: 111,
              height: 17,
              child: Text(
                "Costo de envio",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
