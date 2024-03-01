import 'package:flutter/material.dart';

class Gradients extends StatelessWidget{
  const Gradients({super.key});
  @override
  Widget build(context) {
    return  Container(
          decoration: const BoxDecoration(
              gradient:
                  LinearGradient(colors: [Color.fromARGB(255, 152, 76, 26), Color.fromARGB(255, 114, 67, 86)],
                  begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: const Center(
            child: Text (
              'Hello World!',
               style: TextStyle(
                color: Color.fromARGB(255, 39, 71, 187),
                fontSize: 30,
              ),
            ), 
          ),
        );
  }
}