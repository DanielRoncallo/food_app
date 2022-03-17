import 'package:flutter/material.dart';

class DeliveryAddressWidget extends StatefulWidget {
  DeliveryAddressWidget({Key? key}) : super(key: key);

  @override
  State<DeliveryAddressWidget> createState() => _DeliveryAddressWidgetState();
}

class _DeliveryAddressWidgetState extends State<DeliveryAddressWidget> {
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
                      left: 17,
                      top: 16,
                      child: SizedBox(
                        width: 59,
                        height: 35,
                        child: Text(
                          "Hogar",
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
                        width: 300,
                        height: 34,
                        child: Text(
                          "Direccion xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
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
                        width: 300,
                        height: 17,
                        child: Text(
                          "+605 3000000",
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