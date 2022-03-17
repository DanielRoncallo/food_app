import 'package:flutter/material.dart';

class RastreoOrdern extends StatefulWidget {
  const RastreoOrdern({Key? key}) : super(key: key);

  @override
  State<RastreoOrdern> createState() => _RastreoOrdernState();
}

class _RastreoOrdernState extends State<RastreoOrdern> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mapa'),
      ),
      body: Container(
        width: 380,
        height: 855,
        color: Color(0xff9a9292),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 455,
              child: Stack(
                children: [
                  //Column(),
                  Positioned.fill(
                    child: Stack(
                      children: [
                        Positioned(
                          left: 17,
                          top: 381,
                          child: Container(
                            width: 333,
                            height: 74,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 230,
                          top: 410,
                          child: ButtonTheme(
                          
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xffffb700),
                                fixedSize: const Size(110, 20),
                              ),
                              onPressed: () {
                                /* Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RastreoOrdern()),
                                ); */
                              },
                              child: Text("Mensaje"),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 46,
                          top: 410,
                          child: ButtonTheme(
                          
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xffffb700),
                                fixedSize: const Size(110, 20),
                              ),
                              onPressed: () {
                                /* Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RastreoOrdern()),
                                ); */
                              },
                              child: Text("Llamar"),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 29,
                          top: 388,
                          child: SizedBox(
                            width: 102,
                            height: 20,
                            child: Text(
                              "Repartidor",
                              style: TextStyle(
                                color: Color(0xff2b2323),
                                fontSize: 9,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 233,
                          top: 388,
                          child: SizedBox(
                            width: 102,
                            height: 20,
                            child: Text(
                              "Llegando en",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xff2b2323),
                                fontSize: 9,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 29,
                          top: 404,
                          child: SizedBox(
                            width: 106,
                            height: 13,
                            child: Text(
                              "John smith",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 280,
                          top: 404,
                          child: SizedBox(
                            width: 59,
                            height: 15,
                            child: Text(
                              "10 min",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 9,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    'images/map/map.png',
                    //fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
