import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Dice App"),
        backgroundColor: Colors.black,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int firstDiceNumber = 1;
  int secondDiceNumber = 1;
  int thirdDiceNumber = 1;
  int fourthDiceNumber = 1;
  int fifthDiceNumber = 1;
  int sixthDiceNumber = 1;

  void changeDiceFace() {
    setState(
      () {
        firstDiceNumber = Random().nextInt(6) + 1;
        secondDiceNumber = Random().nextInt(6) + 1;
        thirdDiceNumber = Random().nextInt(6) + 1;
        fourthDiceNumber = Random().nextInt(6) + 1;
        fifthDiceNumber = Random().nextInt(6) + 1;
        sixthDiceNumber = Random().nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    changeDiceFace();
                  },
                  child: Container(
                    child: Image.asset('images/dice$firstDiceNumber.png'),
                  ),
                ),
              ),
              const SizedBox(
                width: 8.0,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    changeDiceFace();
                  },
                  child: Container(
                    child: Image.asset('images/dice$secondDiceNumber.png'),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 8.0,
          ),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    changeDiceFace();
                  },
                  child: Container(
                    child: Image.asset('images/dice$thirdDiceNumber.png'),
                  ),
                ),
              ),
              const SizedBox(
                width: 8.0,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    changeDiceFace();
                  },
                  child: Container(
                    child: Image.asset('images/dice$fourthDiceNumber.png'),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 8.0,
          ),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    changeDiceFace();
                  },
                  child: Container(
                    child: Image.asset('images/dice$fifthDiceNumber.png'),
                  ),
                ),
              ),
              const SizedBox(
                width: 8.0,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    changeDiceFace();
                  },
                  child: Container(
                    child: Image.asset('images/dice$sixthDiceNumber.png'),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
