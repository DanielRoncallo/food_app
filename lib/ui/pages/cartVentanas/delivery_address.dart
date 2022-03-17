import 'package:flutter/material.dart';
import 'package:food_app/ui/pages/cartVentanas/add_location.dart';
import 'package:food_app/ui/pages/cartVentanas/payment_method.dart';
import 'package:food_app/ui/widgets/cart/delivery_address_widget.dart';

class DeliveryAddress extends StatefulWidget {
  DeliveryAddress({Key? key}) : super(key: key);

  @override
  State<DeliveryAddress> createState() => _DeliveryAddressState();
}

class _DeliveryAddressState extends State<DeliveryAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Direccion de entrega'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 50,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DeliveryAddressWidget(),
              SizedBox(
                height: 20,
              ),
              DeliveryAddressWidget(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddLocation()),
                      );
                    },
                    child: const Text('Añadir ubicacion'),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      fixedSize: const Size(342, 30),
                      primary: Color(0xffc4c4c4),
                    ),
                  ),
                ]),
              ),
              Text(
                'Total a pagar: \$ 23.0',
                style: TextStyle(),
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Column(children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PaymentMethod()),
                      );
                    },
                    child: const Text('Continuar a checkout'),
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
        ],
      ),
    );
  }
}
