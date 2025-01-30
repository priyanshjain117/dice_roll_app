import 'package:flutter/material.dart';
import 'package:first_app/widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Roll the Dice",
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(202, 11, 11, 11),
          ),
        ),
        backgroundColor: Colors.orange.shade200, // Softer color for blending
        elevation: 4, // Reduced shadow to make the app bar feel less pop-out
        shadowColor: const Color.fromARGB(
            220, 247, 229, 67), // Softer shadow color to blend in
      ),
      body: const Center(
        child: Body(),
      ),
    );
  }
}
