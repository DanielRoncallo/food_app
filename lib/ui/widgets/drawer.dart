import 'package:flutter/material.dart';
import 'package:food_app/ui/pages/cartVentanas/cart.dart';
import 'package:food_app/ui/pages/home.dart';
import 'package:food_app/ui/pages/ordenVentanas/orders.dart';
import 'package:food_app/ui/pages/perfilVentanas/profile.dart';
 
class DrawerList extends StatefulWidget {
  const DrawerList({Key? key}) : super(key: key);

  @override
  State<DrawerList> createState() => _DrawerListState();
}

class _DrawerListState extends State<DrawerList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
              //color: Colors.blue,
              ),
          child: CircleAvatar(),
        ),
        const Text(
          'Nombre usuario',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
          ),
        ),
        const Text(
          'Correo@gmail.com',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
          ),
        ),
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text('Home'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>   HomeStart()),
            );
          },
        ),
        const Divider(
            height: 10,
            thickness: 3,
            indent: 10,
            endIndent: 90,
            color: Colors.black,
          ),
        ListTile(
          leading: const Icon(Icons.shopping_cart),
          title: const Text('Cart'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Cart()),
            );
          },
        ),
        const Divider(
            height: 10,
            thickness: 3,
            indent: 10,
            endIndent: 90,
            color: Colors.black,
          ),
        ListTile(
          leading: const Icon(Icons.checklist),
          title: const Text('Mis ordenes'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Orders()),
            );
          },
        ),
        const Divider(
            height: 10,
            thickness: 3,
            indent: 10,
            endIndent: 90,
            color: Colors.black,
          ),
        ListTile(
          leading: const Icon(Icons.account_circle),
          title: const Text('Perfil'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>   const Profile()),
            );
          },
        ),
      ],
    );
  }
}
