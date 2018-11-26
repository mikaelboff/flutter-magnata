import 'package:flutter/material.dart';
import 'dart:math';

class Magnata extends StatefulWidget {
  @override
  _MagnataState createState() => _MagnataState();
}

class _MagnataState extends State<Magnata> {
  int _contadorDeGrana = 0;

  void _mandaGrana() {
    setState(() {
      // Responsável por atualizar a tela com o valor
      _contadorDeGrana = _contadorDeGrana + new Random().nextInt(5000);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Magnata"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        child: new Column(
          children: <Widget>[
            Center(
              child: Text(
                "Fique Rico!",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 29.9),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  "R\$ $_contadorDeGrana",
                  style: TextStyle(
                      fontSize: 45.6,
                      color: _contadorDeGrana > 300000
                          ? Colors.amber
                          : Colors.green,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: FlatButton(
                  onPressed: () => _mandaGrana(),
                  textColor: Colors.white70,
                  color: Colors.lightGreen,
                  child: Text(
                    "Mais Grana",
                    style: TextStyle(fontSize: 19.9),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
