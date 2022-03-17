// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app/ui/widgets/color_drawer.dart';
import 'package:food_app/ui/widgets/ordenes/orden_lista.dart';

class Orders extends StatefulWidget {
  Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Mis ordenes'),
      ),
      drawer: const ColorDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
            child: ListView(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(
                  height: 20,
                  width: 20,
                ),
                Text(
                  'Ordenes en progreso',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                OrdenLista(),
                OrdenLista(),
                const SizedBox(
                  height: 20,
                  width: 20,
                ),
                Text(
                  'Ordenes en progreso',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                OrdenLista(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
