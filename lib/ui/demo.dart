import 'dart:math';

import 'package:flutter/material.dart';

class demo extends StatefulWidget {
  const demo({super.key});

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  double _xPosition = 0;
  double _yPosition = 0;

  void _moveButton() {
    final random = Random();
    setState(() {
      _xPosition = random.nextDouble() * 200; // Max x-coordinate to move
      _yPosition = random.nextDouble() * 400; // Max y-coordinate to move
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: Duration(milliseconds: 600),
            curve: Curves.easeInOut,
            left: _xPosition,
            top: _yPosition,
            child: GestureDetector(
              onTap: _moveButton,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Move Me',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
