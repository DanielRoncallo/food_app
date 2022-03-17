// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app/ui/utils/color_unit.dart';
import 'package:food_app/ui/widgets/home/categoria_comida.dart';
import 'package:food_app/ui/widgets/color_drawer.dart';
import 'package:food_app/ui/widgets/home/categoria_cupones.dart';
import 'package:food_app/ui/widgets/home/categoria_restaurantes_cerca.dart';

GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

class HomeStart extends StatefulWidget {
  const HomeStart({Key? key}) : super(key: key);

  @override
  State<HomeStart> createState() => _HomeStartState();
}

GridView build2DArrayOfPennies(int rowCount, int numItems, String imageFile) {
  return GridView.count(
    scrollDirection: Axis.horizontal,
    crossAxisCount: rowCount,
    children: List.generate(numItems, (index) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Image.asset(
          imageFile,
          fit: BoxFit.contain,
        ),
      );
    }),
  );
}

class _HomeStartState extends State<HomeStart> {
  final globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      backgroundColor: Colors.grey,
      //appBar: AppBar(),
      drawer: const ColorDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 160.0,
            child: Stack(
              children: <Widget>[
                Container(
                  color: Color(ColorWidgetSet().colorDrawer),
                  width: MediaQuery.of(context).size.width,
                  height: 350.0,
                  child: const Center(
                    child: Text(
                      "Home",
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
                Positioned(
                  top: 95.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                              color: Colors.grey.withOpacity(0.5), width: 1.0),
                          color: Colors.white),
                      child: Row(
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.menu,
                              color: Colors.red,
                            ),
                            onPressed: () {
                              //print("your menu action here");
                              globalKey.currentState!.openDrawer();
                            },
                          ),
                          const Expanded(
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search",
                              ),
                            ),
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.search,
                              color: Colors.red,
                            ),
                            onPressed: () {
                              //print("your menu action here");
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: ListView(
              children: [
                Container(
                  height: 150,
                  width: 200,
                  child: build2DArrayOfPennies(1, 7, 'images/food/food1.jpg'),
                ),
                const SizedBox(
                  height: 20,
                  width: 20,
                ),
                const Text(
                  'Categorias',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const CategoriaComida(
                        pathe: 'images/food/food1.jpg',
                        tipo: 'caldo',
                      ),
                      const CategoriaComida(
                        pathe: 'images/food/food2.jpg',
                        tipo: 'hamburguesa',
                      ),
                      const CategoriaComida(
                        pathe: 'images/food/food3.jpg',
                        tipo: 'hamburguesa',
                      ),
                      const CategoriaComida(
                        pathe: 'images/food/food4.jpg',
                        tipo: 'hamburguesa',
                      ),
                      const CategoriaComida(
                        pathe: 'images/food/food5.jpg',
                        tipo: 'hamburguesa',
                      ),
                      const CategoriaComida(
                        pathe: 'images/food/food6.jpg',
                        tipo: 'hamburguesa',
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Ofertas para ti',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const CategoriaCupon(pathe: 'images/discount/coupon.jpg'),
                      const CategoriaCupon(pathe: 'images/discount/coupon.jpg'),
                      const CategoriaCupon(pathe: 'images/discount/coupon.jpg'),
                      const CategoriaCupon(pathe: 'images/discount/coupon.jpg'),
                      const CategoriaCupon(pathe: 'images/discount/coupon.jpg'),
                    ],
                  ),
                ),
                const Text(
                  'Restaurantes cerca de ti',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                RestaurantesCerca(),
                RestaurantesCerca(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
