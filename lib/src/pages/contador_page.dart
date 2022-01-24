// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  final _clicsText = TextStyle(fontSize: 30);
  final _clicsTotal = TextStyle(fontSize: 40, color: Colors.blue);
  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ContadorApp'),
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de clics:', style: _clicsText),
            Text('$_contador', style: _clicsTotal)
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero), onPressed: _reset),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _rest),
        SizedBox(width: 5.0),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _add),
      ],
    );
  }

  void _add() {
    setState(() => _contador++);
  }

  void _rest() {
    setState(() => _contador >= 1 ? _contador-- : null);
  }

  void _reset() {
    setState(() => _contador = 0);
  }
}
