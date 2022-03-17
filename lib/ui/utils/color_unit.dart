import 'package:flutter/material.dart';

class ColorWidgetSet {
  int colorBackground = 0xffff7a00;
  int colorDrawer = 0xffff8A65;
}
showSnackbar(String content,BuildContext context){
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content)
    ),
  );
}