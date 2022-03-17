// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class RestaurantesCerca extends StatefulWidget {
  
  // ignore: use_key_in_widget_constructors
 

  @override
  RestaurantesCercaState createState() => RestaurantesCercaState();
}

class RestaurantesCercaState extends State<RestaurantesCerca> {
  @override
  Widget build(BuildContext context) {
    return  Container(
                  margin: EdgeInsets.all(20),
                  width: 181,
                  height: 108,
                  decoration: BoxDecoration(
                    color: Color(0xffc9c4c4),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Stack(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Positioned(
                        left: 19,
                        top: 9,
                        child: Icon(
                          Icons.fastfood,
                          color: Colors.grey,
                          size: 50.0,
                        ),
                      ),
                      Positioned(
                        left: 38,
                        top: 11,
                        child: SizedBox(
                          width: 238,
                          height: 20,
                          child: Text(
                            "Nombre Restaurante",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 78,
                        top: 32,
                        child: SizedBox(
                          width: 109,
                          height: 15,
                          child: Text(
                            "personas rating",
                            textAlign: TextAlign.center,
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
                        left: 270,
                        top: 9,
                        child: SizedBox(
                          width: 58,
                          height: 20,
                          child: Text(
                            "4.3",
                            textAlign: TextAlign.right,
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
                        left: 310,
                        top: 7,
                        child: SizedBox(
                          width: 58,
                          height: 20,
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 16.0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 36,
                        top: 67,
                        child: SizedBox(
                           height: 12,
                          child: Icon(
                            Icons.location_on,
                            color: Colors.orange,
                            size: 16.0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 60,
                        top: 67,
                        child: SizedBox(
                          width: 326,
                          height: 12,
                          child: Text(
                            "direccion",
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
