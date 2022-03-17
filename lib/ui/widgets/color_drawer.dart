// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app/ui/utils/color_unit.dart';
import 'package:food_app/ui/widgets/drawer.dart';

class ColorDrawer extends StatefulWidget {
  const ColorDrawer({Key? key}) : super(key: key);

  @override
  State<ColorDrawer> createState() => _ColorDrawerState();
}

class _ColorDrawerState extends State<ColorDrawer> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color(ColorWidgetSet().colorDrawer), //desired color
      ),
      child: Drawer(
        child: DrawerList(),
      ),
    );
  }
}
