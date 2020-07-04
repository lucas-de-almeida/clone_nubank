import 'package:clone_nubank/clone_nubank.dart';
import 'package:clone_nubank/parte_traz.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CloneNubank(),
    );
  }
}
