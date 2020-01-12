import 'package:aula7_observablelist/app/pages/home/home_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Slidy',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: HomePage());
  }
}
