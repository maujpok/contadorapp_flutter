// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, avoid_print

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final clicsText = TextStyle(fontSize: 30);
  final clicsTotal = TextStyle(fontSize: 40, color: Colors.blue);
  final contador = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de clics:', style: clicsText),
            Text('$contador', style: clicsTotal)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // print("Hola Mundo");
          // contador++;
          print(contador);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
