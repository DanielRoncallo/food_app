// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
 import 'package:food_app/ui/widgets/cart/info_producto.dart';
import 'package:food_app/ui/widgets/cart/precio_total.dart';
import 'package:food_app/ui/widgets/color_drawer.dart';

import 'delivery_address.dart';

class Cart extends StatefulWidget {
  Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Carro'),
      ),
      drawer: const ColorDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 20,
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              InfoProducto(),
              
              InfoProducto(),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PrecioTotal(),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(children: [
              ElevatedButton(
                onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DeliveryAddress()),
                      );},
                child: const Text('Pagar'),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    fixedSize: const Size(240, 50),
                    primary: Colors.deepOrange),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
