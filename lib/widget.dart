import 'package:first_app/statefulWidget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    // Random random = Random();

    return Container(
      // width: 100,
      // height: 100,
      // margin: EdgeInsets.all(6),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.amber.shade200,
            Colors.blueGrey.shade400,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: Dice(),
      ),
    );
  }
}
