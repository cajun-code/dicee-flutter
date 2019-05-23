import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Die()
          ),
          Expanded(
            child: Die()
          ),
        ],
      ),
    );
  }
}

class Die extends StatefulWidget {
  @override
  _DieState createState() => _DieState();
}

class _DieState extends State<Die> {
  int diceValue = 1;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Image.asset('images/dice$diceValue.png'),
      onPressed: (){
        roll();
      },
    );
  }

  void roll(){
    setState(() {
        diceValue = Random().nextInt(6) + 1;
      });
  }
}