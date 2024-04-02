import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    int leftDiceNo = 2;
    return Center(
      child: Row(
        children: [
          Expanded(
            //flex: 2,
            child: TextButton(
              onPressed: () => print('left button pressed'),
              child: Image.asset('images/dice$leftDiceNo.png'),
            ),
          ),
          Expanded(
            //flex: 1,
            child: TextButton(
              onPressed: () => print('right button got pressed'),
              child: Image.asset('images/dice1.png'),
            ),
          ),
        ],
      ),
    );
  }
}
