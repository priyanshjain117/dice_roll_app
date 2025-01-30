// ignore: file_names
import 'package:flutter/material.dart';
import 'dart:math';

int number = 1;
final Random randomNum = Random();

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() {
    return _Dice();
  }
}

class _Dice extends State<Dice> {
  void onPressed() {
    setState(() {
      number = randomNum.nextInt(6) + 1;
    });
    print(number);
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$number.png",
          width: screenWidth * 0.5,
          // color: Color.fromARGB(50, 0, 0, 0),
        ),
        SizedBox(
          height: screenHeight * 0.02,
        ),
        TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            padding: EdgeInsets.all(4),
            elevation: 2,
            fixedSize: Size(screenWidth * 0.5, screenHeight * 0.1),
            alignment: Alignment.center, // Ensures the child is centered
            backgroundColor: const Color.fromARGB(40, 255, 255, 255),
          ),
          child: Text(
            "Roll it..",
            textAlign:
                TextAlign.center, // Ensures text alignment within the button
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(231, 0, 0, 0),
            ),
          ),
        ),
      ],
    );
  }
}
