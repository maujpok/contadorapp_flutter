import 'package:flutter/material.dart';
import 'package:flutter_app/src/pages/contador_page.dart';
// import 'package:flutter_app/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Contador(),
      ),
    );
  }
}
