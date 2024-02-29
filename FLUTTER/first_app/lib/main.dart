import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body:Gradients,
      ),
    ),
  );
}class Gradients extends StatelessWidget{
  @override
  Widget build(context) {
    return  Container(
          decoration: const BoxDecoration(
              gradient:
                  LinearGradient(colors: [Color.fromARGB(255, 35, 14, 225), Color.fromARGB(255, 155, 41, 87)],
                  begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: const Center(
            child: Text (
              'Hello World!',
               style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ), 
          ),
        );
  }
}
