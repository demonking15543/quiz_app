import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

void main() {
  runApp(const QizeApp());
}

class QizeApp extends StatelessWidget {
  const QizeApp({super.key});
  @override
  Widget build(context) {
    return  MaterialApp(
      home: Scaffold(
        body:  Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors:[
              Color.fromARGB(255, 78, 13, 151),
              Color.fromARGB(255, 107, 15, 168)


          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight)),
          child: const StartScreen(),
        ),
      ),
    );
  }
}
