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

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNo = 1;
  int rightDiceNo = 1;

  void setStateForDice() {
    setState(() {
      leftDiceNo = Random().nextInt(5) + 1;
      rightDiceNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
                child: FlatButton(
              onPressed: () {
                setStateForDice();
              },
              child: Image.asset('images/dice$leftDiceNo.png'),
            )),
            Expanded(
                child: FlatButton(
              onPressed: () {
                setStateForDice();
              },
              child: Image.asset('images/dice$rightDiceNo.png'),
            )),
          ],
        ),
      ),
    );
  }
}
