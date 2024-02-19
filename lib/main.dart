import 'package:flutter/material.dart';
import 'package:practice/screens/custom_drawer/drawer_screen.dart';
import 'package:practice/screens/custom_text_form_field/text_form_field_screen.dart';
import 'package:practice/screens/gridview/gridview_screen.dart';
import 'package:practice/screens/listview/listview_screen.dart';
import 'package:practice/screens/menu_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MenuScreen()
    );
  }
}