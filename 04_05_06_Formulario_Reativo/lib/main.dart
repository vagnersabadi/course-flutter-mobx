import 'package:aula_04/home.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'controller.dart';


void main(){

  GetIt getIt = GetIt.I;
  getIt.registerSingleton<Controller>(Controller());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          title: 'Flutter Mobx',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: MyHomePage(),
        );
  }
}