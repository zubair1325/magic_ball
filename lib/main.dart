import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MagicBall());
}

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int change = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Center(
          child: Text(
            'Ask Me Anything',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  change = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$change.png'),
            ),
          ),
        ],
      ),
    ));
  }
}
