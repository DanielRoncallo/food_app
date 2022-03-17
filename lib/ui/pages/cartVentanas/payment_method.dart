import 'package:flutter/material.dart';
import 'package:food_app/ui/pages/cartVentanas/delivery_final.dart';
import 'package:food_app/ui/pages/cartVentanas/single_selection_example.dart';

class PaymentMethod extends StatefulWidget {
  PaymentMethod({Key? key}) : super(key: key);

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    List<String> sortFilter = [
      'Efectivo',
      'Tarjeta credito/debito',
      'Paypal',
      'Nequi',
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Metodo de pago'),
      ),
      body: SingleSelectionExample(sortFilter),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //openDialog();
           Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DeliveryFinal()),
                      );
        },
        tooltip: 'Increment',
        child: Icon(Icons.payment),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
